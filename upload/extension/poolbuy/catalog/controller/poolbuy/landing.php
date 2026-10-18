<?php
namespace Opencart\Catalog\Controller\Extension\Poolbuy\Poolbuy;

use Opencart\System\Library\Extension\Poolbuy\PoolPresenter;

/**
 * Class Landing
 *
 * Renders the PoolBuy marketing landing page. Called by common/home when the
 * extension is enabled, and returns a rendered fragment rather than a full
 * response so it composes with OpenCart's layout modules.
 *
 * @package Opencart\Catalog\Controller\Extension\Poolbuy\Poolbuy
 */
class Landing extends \Opencart\System\Engine\Controller {
	/**
	 * Index
	 *
	 * @return string rendered landing markup
	 */
	public function index(): string {
		$this->load->language('extension/poolbuy/poolbuy/landing');

		$this->load->model('extension/poolbuy/poolbuy/pool');
		$this->load->model('tool/image');

		$symbol = (string)$this->config->get('module_poolbuy_currency_symbol');

		$data['marketplace'] = $this->url->link('extension/poolbuy/pool', 'language=' . $this->config->get('config_language'));
		$data['register'] = $this->url->link('account/register', 'language=' . $this->config->get('config_language'));
		$data['contact'] = $this->url->link('information/contact', 'language=' . $this->config->get('config_language'));
		$data['categories_all'] = $this->url->link('product/category', 'language=' . $this->config->get('config_language'));

		// ---- Hero: the fullest open pool, so the hero always shows real momentum
		$data['featured'] = [];

		$featured = $this->model_extension_poolbuy_poolbuy_pool->getFeaturedPool();

		if ($featured) {
			$tiers = $this->model_extension_poolbuy_poolbuy_pool->getTiers((int)$featured['pool_id']);

			$view = PoolPresenter::present($featured, $tiers, ['symbol' => $symbol]);

			$view['hint'] = PoolPresenter::hint($view);
			$view['progress_modifier'] = PoolPresenter::progressModifier($view);
			$view['href'] = $this->url->link('product/product', 'language=' . $this->config->get('config_language') . '&product_id=' . $view['product_id']);
			$view['thumb'] = $this->thumb((string)($featured['product_image'] ?? ''), 160, 160);

			$data['featured'] = $view;
		}

		// ---- Headline statistics, from real counts
		$stats = $this->model_extension_poolbuy_poolbuy_pool->getMarketplaceStatistics();

		$data['stats'] = [
			'active_products' => $this->compact($stats['active_products']),
			'active_sellers'  => $this->compact($stats['active_sellers']),
			'active_pools'    => $this->compact($stats['active_pools']),
			'units_pooled'    => $this->compact($stats['units_pooled']),
			'active_buyers'   => $this->compact($stats['active_buyers'])
		];

		$data['has_pools'] = $stats['active_pools'] > 0;

		$data['search_action'] = $this->url->link('product/search', 'language=' . $this->config->get('config_language'));

		$cache_lang = (int)$this->config->get('config_language_id');
		$cache_curr = (string)$this->session->data['currency'];
		$cat_cache_key = 'poolbuy.landing.categories.' . $cache_lang;
		$trend_cache_key = 'poolbuy.landing.trending.' . $cache_lang . '.' . $cache_curr;

		$categories_cached = $this->cache->get($cat_cache_key);

		if (!empty($categories_cached)) {
			$data['categories'] = $categories_cached;
		} else {
			// ---- All 12 Core B2B Wholesale Categories with Subcategories
			$this->load->model('catalog/category');
			$this->load->model('catalog/product');

			$data['categories'] = [];
			$parent_categories = $this->model_catalog_category->getCategories(0);

			foreach ($parent_categories as $cat) {
				$cat_id = (int)$cat['category_id'];
				$children = $this->model_catalog_category->getCategories($cat_id);

				$sub_list = [];
				foreach (array_slice($children, 0, 3) as $child) {
					$sub_list[] = [
						'name' => $child['name'],
						'href' => $this->url->link('product/category', 'language=' . $this->config->get('config_language') . '&path=' . $cat_id . '_' . $child['category_id'])
					];
				}

				$filter_data = [
					'filter_category_id'  => $cat_id,
					'filter_sub_category' => true
				];
				$prod_total = $this->model_catalog_product->getTotalProducts($filter_data);

				$img = !empty($cat['image']) ? $cat['image'] : 'catalog/poolbuy/cat_machinery.jpg';

				$data['categories'][] = [
					'category_id'   => $cat_id,
					'name'          => $cat['name'],
					'image'         => $this->thumb($img, 480, 360),
					'subcategories' => $sub_list,
					'product_total' => $prod_total,
					'href'          => $this->url->link('product/category', 'language=' . $this->config->get('config_language') . '&path=' . $cat_id)
				];
			}

			$this->cache->set($cat_cache_key, $data['categories']);
		}

		$trending_cached = $this->cache->get($trend_cache_key);

		if (!empty($trending_cached)) {
			$data['trending_products'] = $trending_cached;
		} else {
			if (!isset($this->model_catalog_product)) {
				$this->load->model('catalog/product');
			}

			// ---- 8 Trending Factory Wholesale Deals
			$data['trending_products'] = [];
			$products = $this->model_catalog_product->getProducts([
				'sort'  => 'p.date_added',
				'order' => 'DESC',
				'start' => 0,
				'limit' => 8
			]);

			foreach ($products as $p) {
				$pid = (int)$p['product_id'];
				$img = !empty($p['image']) ? $p['image'] : 'placeholder.png';

				$discount_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "product_discount` WHERE `product_id` = '" . $pid . "' ORDER BY `quantity` ASC LIMIT 1");
				$tier_badge = '';
				if ($discount_query->num_rows) {
					$tier_qty = (int)$discount_query->row['quantity'];
					$tier_price = $this->currency->format((float)$discount_query->row['price'], $this->session->data['currency']);
					$tier_badge = 'Tier: ' . $tier_qty . '+ @ ' . $tier_price;
				}

				$data['trending_products'][] = [
					'product_id' => $pid,
					'name'       => $p['name'],
					'thumb'      => $this->thumb($img, 360, 360),
					'price'      => $this->currency->format((float)$p['price'], $this->session->data['currency']),
					'minimum'    => max(1, (int)$p['minimum']),
					'tier_badge' => $tier_badge,
					'href'       => $this->url->link('product/product', 'language=' . $this->config->get('config_language') . '&product_id=' . $pid)
				];
			}

			$this->cache->set($trend_cache_key, $data['trending_products']);
		}

		// ---- How it works. Icons are FontAwesome equivalents of the design's
		// Material Symbols, since FontAwesome already ships with OpenCart.
		$data['steps'] = [
			['icon' => 'fa-solid fa-file-arrow-up', 'title' => $this->language->get('text_step_1_title'), 'body' => $this->language->get('text_step_1_body')],
			['icon' => 'fa-solid fa-user-plus',     'title' => $this->language->get('text_step_2_title'), 'body' => $this->language->get('text_step_2_body')],
			['icon' => 'fa-solid fa-circle-check',  'title' => $this->language->get('text_step_3_title'), 'body' => $this->language->get('text_step_3_body')],
			['icon' => 'fa-solid fa-truck',         'title' => $this->language->get('text_step_4_title'), 'body' => $this->language->get('text_step_4_body')]
		];

		return $this->load->view('extension/poolbuy/poolbuy/landing', $data);
	}

	/**
	 * Thumb
	 *
	 * Resizes an image, falling back to OpenCart's placeholder when the file is
	 * missing so a broken path never renders as a broken image.
	 *
	 * @param string $image
	 * @param int    $width
	 * @param int    $height
	 *
	 * @return string
	 */
	private function thumb(string $image, int $width, int $height): string {
		$decoded = html_entity_decode($image, ENT_QUOTES, 'UTF-8');

		if ($image !== '' && is_file(DIR_IMAGE . $decoded)) {
			return $this->model_tool_image->resize($decoded, $width, $height);
		}

		return $this->model_tool_image->resize('placeholder.png', $width, $height);
	}

	/**
	 * Compact
	 *
	 * Renders large counts as 1.2K / 3.4M so the stats band stays legible.
	 *
	 * @param int $value
	 *
	 * @return string
	 */
	private function compact(int $value): string {
		if ($value >= 1000000) {
			return rtrim(rtrim(number_format($value / 1000000, 1), '0'), '.') . 'M';
		}

		if ($value >= 1000) {
			return rtrim(rtrim(number_format($value / 1000, 1), '0'), '.') . 'K';
		}

		return (string)$value;
	}
}

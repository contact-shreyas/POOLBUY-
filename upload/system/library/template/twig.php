<?php
namespace Opencart\System\Library\Template;
/**
 * Class Twig
 *
 * @package Opencart\System\Library\Template
 */
class Twig {
	/**
	 * @var string
	 */
	protected string $root;
	/**
	 * @var \Twig\Loader\FilesystemLoader
	 */
	protected \Twig\Loader\FilesystemLoader $loader;
	/**
	 * @var string
	 */
	protected string $directory;
	/**
	 * @var array<string, string>
	 */
	protected array $path = [];

	/**
	 * Constructor
	 */
	public function __construct() {
		// Unfortunately, we have to set the web root directory as the base since Twig confuses which template cache to use.
		$this->root = substr(DIR_OPENCART, 0, -1);

		// We have to add the C directory as the base directory because twig can only accept the first namespace/,
		// rather than a multiple namespace system, which took me less than a minute to write. If symphony is like
		// this, then I have no idea why people use the framework.
		$this->loader = new \Twig\Loader\FilesystemLoader('./', $this->root);
	}

	/**
	 * Add Path
	 *
	 * @param string $namespace
	 * @param string $directory
	 *
	 * @return void
	 */
	public function addPath(string $namespace, string $directory = ''): void {
		if (!$directory) {
			$this->directory = $namespace;
		} else {
			$this->path[$namespace] = $directory;
		}
	}

	/**
	 * @var \Twig\Environment|null
	 */
	protected ?\Twig\Environment $twig = null;

	/**
	 * Render
	 *
	 * @param string               $filename
	 * @param array<string, mixed> $data
	 * @param string               $code
	 *
	 * @return string
	 */
	public function render(string $filename, array $data = [], string $code = ''): string {
		$file = $this->directory . $filename . '.twig';

		$namespace = '';

		$parts = explode('/', $filename);

		foreach ($parts as $part) {
			if (!$namespace) {
				$namespace .= $part;
			} else {
				$namespace .= '/' . $part;
			}

			if (isset($this->path[$namespace])) {
				$file = $this->path[$namespace] . substr($filename, strlen($namespace) + 1) . '.twig';
			}
		}

		// We have to remove the root web directory.
		$file = substr($file, strlen($this->root) + 1);

		try {
			if ($code) {
				$loader = new \Twig\Loader\ArrayLoader([$file => $code]);
				$twig = new \Twig\Environment($loader, [
					'charset'     => 'utf-8',
					'autoescape'  => false,
					'debug'       => false,
					'auto_reload' => true,
					'cache'       => false
				]);
			} else {
				if ($this->twig === null) {
					$cache_dir = is_dir('/tmp') && is_writable('/tmp') ? '/tmp/opencart_cache/template/' : DIR_CACHE . 'template/';
					if (!is_dir($cache_dir)) {
						@mkdir($cache_dir, 0777, true);
					}

					$this->twig = new \Twig\Environment($this->loader, [
						'charset'     => 'utf-8',
						'autoescape'  => false,
						'debug'       => false,
						'auto_reload' => true,
						'cache'       => $cache_dir
					]);
				}
				$twig = $this->twig;
			}

			return $twig->render($file, $data);
		} catch (\Twig\Error\SyntaxError $e) {
			throw new \Exception('Error: Could not load template ' . $filename . '!');
		}
	}
}

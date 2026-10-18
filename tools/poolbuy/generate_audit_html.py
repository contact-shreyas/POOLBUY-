import subprocess
import os

cmd = [
    'docker', 'exec', 'poolbuy-mysql-1', 'mysql', '-u', 'root', '-popencart', 'opencart', '-e',
    "SELECT p.product_id, pd.name, p.model, p.image, COALESCE(MAX(cd.name), 'Wholesale Catalog') AS category FROM oc_product p JOIN oc_product_description pd ON (p.product_id = pd.product_id AND pd.language_id = 1) LEFT JOIN oc_product_to_category p2c ON (p.product_id = p2c.product_id) LEFT JOIN oc_category_description cd ON (p2c.category_id = cd.category_id AND cd.language_id = 1) GROUP BY p.product_id, pd.name, p.model, p.image ORDER BY p.product_id ASC;"
]

res = subprocess.run(cmd, capture_output=True, text=True)
lines = [l.strip() for l in res.stdout.strip().split('\n') if l.strip()]
if not lines:
    print("No output from MySQL query!")
    exit(1)

products = []
for line in lines[1:]:
    parts = line.split('\t')
    if len(parts) >= 4:
        products.append({
            'product_id': parts[0],
            'name': parts[1],
            'model': parts[2],
            'image': parts[3],
            'category': parts[4] if len(parts) > 4 else 'Industrial Wholesale'
        })

print(f"Parsed {len(products)} products from MySQL.")

html = """<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PoolBuy Catalog Visual Audit - All %%COUNT%% Products</title>
<style>
  * { box-sizing: border-box; }
  body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; background: #0b1120; color: #f8fafc; margin: 0; padding: 32px 24px; }
  header { max-width: 1600px; margin: 0 auto 32px; border-bottom: 1px solid #1e293b; padding-bottom: 20px; }
  h1 { font-size: 26px; margin: 0 0 8px 0; color: #38bdf8; font-weight: 700; letter-spacing: -0.02em; }
  p.subtitle { color: #94a3b8; margin: 0; font-size: 14px; }
  .grid { max-width: 1600px; margin: 0 auto; display: grid; grid-template-columns: repeat(auto-fill, minmax(320px, 1fr)); gap: 24px; }
  .card { background: #1e293b; border: 1px solid #334155; border-radius: 14px; overflow: hidden; display: flex; flex-direction: column; box-shadow: 0 4px 12px rgba(0,0,0,0.3); }
  .img-box { width: 100%; height: 260px; background: #ffffff; display: flex; align-items: center; justify-content: center; overflow: hidden; position: relative; border-bottom: 1px solid #334155; }
  .img-box img { max-width: 92%; max-height: 92%; object-fit: contain; }
  .badge { position: absolute; top: 10px; left: 10px; background: rgba(15,23,42,0.9); color: #38bdf8; font-size: 11px; font-weight: 800; padding: 4px 10px; border-radius: 6px; border: 1px solid rgba(56,189,248,0.4); backdrop-filter: blur(4px); }
  .info { padding: 16px; flex-grow: 1; display: flex; flex-direction: column; }
  .cat { font-size: 11px; text-transform: uppercase; letter-spacing: 0.08em; color: #38bdf8; font-weight: 700; margin-bottom: 6px; }
  .title { font-size: 14px; font-weight: 600; line-height: 1.45; color: #f1f5f9; margin-bottom: 12px; flex-grow: 1; }
  .meta { font-size: 12px; color: #94a3b8; font-family: ui-monospace, SFMono-Regular, Menlo, monospace; display: flex; justify-content: space-between; border-top: 1px solid #283548; padding-top: 10px; margin-top: auto; }
</style>
</head>
<body>
<header>
  <h1>PoolBuy Wholesale - Comprehensive Product Catalog Visual Audit</h1>
  <p class="subtitle">Complete catalog audit: %%COUNT%% active industrial B2B products and their high-resolution assets.</p>
</header>
<div class="grid">
""".replace("%%COUNT%%", str(len(products)))

for p in products:
    img_rel = p['image']
    html += f"""  <div class="card" id="card_{p['product_id']}">
    <div class="img-box">
      <span class="badge">PID #{p['product_id']}</span>
      <img src="/image/{img_rel}" alt="{p['name']}" loading="lazy" />
    </div>
    <div class="info">
      <div class="cat">{p['category']}</div>
      <div class="title">{p['name']}</div>
      <div class="meta">
        <span>SKU: {p['model']}</span>
        <span>{img_rel.split('/')[-1]}</span>
      </div>
    </div>
  </div>
"""

html += """</div>
</body>
</html>
"""

os.makedirs('upload', exist_ok=True)
with open('upload/catalog_image_audit.html', 'w', encoding='utf-8') as f:
    f.write(html)

print("Generated upload/catalog_image_audit.html successfully!")

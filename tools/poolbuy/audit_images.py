import re
import json
import os
import hashlib
from collections import defaultdict

with open('tools/poolbuy/audit_all_products.json') as f:
    products = json.load(f)

print(f"Total products in DB: {len(products)}")

# Check duplicate file hashes across products
hash_to_products = defaultdict(list)
for p in products:
    img_path = os.path.join('upload/image', p['image'])
    if os.path.exists(img_path):
        with open(img_path, 'rb') as fp:
            h = hashlib.md5(fp.read()).hexdigest()
        hash_to_products[h].append(p)
    else:
        print(f"Missing image file for product {p['id']}: {p['image']}")

print("\n=== DUPLICATE PRODUCT IMAGES IN CATALOG ===")
duplicate_count = 0
for h, prods in hash_to_products.items():
    if len(prods) > 1:
        duplicate_count += 1
        print(f"\nGroup {duplicate_count} (Hash {h[:8]}, {len(prods)} products):")
        for p in prods:
            print(f"  [{p['id']}] {p['name']} -> {p['image']}")

print(f"\nTotal duplicate groups: {duplicate_count}")

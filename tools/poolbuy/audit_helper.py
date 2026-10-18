import urllib.request
import re

url = 'http://localhost/index.php?route=product/category&path=101'
html = urllib.request.urlopen(url).read().decode('utf-8')
titles = re.findall(r'<h4><a[^>]*>(.*?)</a></h4>', html)
images = re.findall(r'<img[^>]+src="([^"]+)"[^>]+class="[^"]*img-fluid[^"]*"', html)
print("Titles:", titles)
print("Images count:", len(images))
for i in range(min(len(titles), len(images))):
    print(f"[{i+1}] {titles[i]} -> {images[i]}")

import os
from PIL import Image, ImageDraw, ImageFont

img_dir = r"c:\1. transfer\GOGO\poolbuy\upload\image\catalog\poolbuy"
os.makedirs(img_dir, exist_ok=True)

def create_luxury_card(filename, title, subtitle, badge_text, primary_color, accent_color):
    w, h = 800, 600
    img = Image.new("RGB", (w, h), color="#0F1117")
    draw = ImageDraw.Draw(img)
    
    # Draw luxury gradient/vignette background
    for y in range(h):
        r = int(15 + (y / h) * 12)
        g = int(17 + (y / h) * 15)
        b = int(23 + (y / h) * 25)
        draw.line([(0, y), (w, y)], fill=(r, g, b))
        
    # Draw elegant geometric framing
    draw.rectangle([24, 24, w - 24, h - 24], outline="#2D3748", width=1)
    draw.rectangle([32, 32, w - 32, h - 32], outline=primary_color, width=2)
    
    # Draw glowing central diamond / gemstone emblem
    cx, cy = w // 2, h // 2 - 40
    # Diamond facet lines
    diamond_pts = [(cx, cy - 80), (cx + 90, cy), (cx, cy + 90), (cx - 90, cy)]
    draw.polygon(diamond_pts, outline=accent_color, width=3)
    inner_pts = [(cx, cy - 50), (cx + 55, cy), (cx, cy + 55), (cx - 55, cy)]
    draw.polygon(inner_pts, outline=primary_color, width=2)
    draw.line([(cx, cy - 80), (cx, cy + 90)], fill=accent_color, width=1)
    draw.line([(cx - 90, cy), (cx + 90, cy)], fill=accent_color, width=1)
    
    # Decorative sparkle crosses
    def draw_sparkle(x, y, size, col):
        draw.line([(x - size, y), (x + size, y)], fill=col, width=2)
        draw.line([(x, y - size), (x, y + size)], fill=col, width=2)
        draw.line([(x - size//2, y - size//2), (x + size//2, y + size//2)], fill=col, width=1)
        draw.line([(x - size//2, y + size//2), (x + size//2, y - size//2)], fill=col, width=1)

    draw_sparkle(cx - 120, cy - 40, 14, accent_color)
    draw_sparkle(cx + 120, cy - 30, 18, accent_color)
    draw_sparkle(cx + 80, cy + 80, 12, primary_color)
    draw_sparkle(cx - 80, cy + 70, 12, primary_color)
    
    # Text rendering (Default PIL font with scaling)
    font = ImageFont.load_default()
    
    # Badge
    badge_w = len(badge_text) * 8 + 24
    badge_x = (w - badge_w) // 2
    draw.rectangle([badge_x, cy + 120, badge_x + badge_w, cy + 146], fill="#1E2638", outline=accent_color, width=1)
    draw.text((badge_x + 12, cy + 127), badge_text, fill=accent_color, font=font)
    
    # Title
    t_w = len(title) * 8
    draw.text(((w - t_w) // 2, cy + 165), title, fill="#FFFFFF", font=font)
    
    # Subtitle
    s_w = len(subtitle) * 7
    draw.text(((w - s_w) // 2, cy + 195), subtitle, fill="#A0AEC0", font=font)
    
    out_path = os.path.join(img_dir, filename)
    img.save(out_path, quality=95)
    print(f"Saved: {out_path}")

create_luxury_card("cat_jewellery.jpg", "FINE & FASHION JEWELLERY", "925 Sterling Silver | 18K Gold Vermeil | Natural Gemstones", "B2B WHOLESALE COLLECTION", "#D4AF37", "#F3E5AB")
create_luxury_card("prod_silver_chain.jpg", "925 SOLID STERLING SILVER CUBAN CHAINS", "18-24 Inch | Rhodium & Gold Finish | Hallmarked 925", "LOT OF 20 UNITS", "#E2E8F0", "#CBD5E1")
create_luxury_card("prod_moiss_ring.jpg", "18K GOLD VERMEIL MOISSANITE RINGS", "1.0ct VVS1 D-Color | Sizes US 5-10 | GRA Certified", "LOT OF 50 UNITS", "#D4AF37", "#FFD700")
create_luxury_card("prod_gem_bracelet.jpg", "NATURAL GEMSTONE BEADED BRACELETS", "6mm - 10mm AAA Beads | Onyx, Lapis, Amethyst, Tiger Eye", "LOT OF 100 UNITS", "#9F7AEA", "#D6BCFA")

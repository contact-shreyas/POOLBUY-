"""
Generates tools/poolbuy/seed_catalog_expansion.sql
Creates 24 subcategories, 5 filter groups with 30 filters, category & product filter associations,
40+ new B2B products with full attributes and specs, and 16 new wholesale buying pools with volume ladders.
"""

import os

categories = [
    # (id, parent_id, name, desc)
    (1011, 101, "Industrial Water Pumps & Submersibles", "Heavy-duty slurry, sump, and sewage submersible pumps for commercial water handling."),
    (1012, 101, "Commercial Filtration & Vessel Systems", "Multistage FRP vessels, quartz sand filters, and commercial RO filtration housings."),
    (1013, 101, "Pressure Booster & Circulation Motors", "Inline circulation motors, high-pressure centrifugal boosting pumps for multi-story facilities."),

    (1021, 102, "Disinfection & Sanitizing Chemicals", "Calcium hypochlorite tablets, stabilized chlorine granules, and industrial biocides."),
    (1022, 102, "Water Clarifiers & Coagulants", "Polyaluminium chloride (PAC), ferric sulfate, and cationic flocculants for water treatment."),
    (1023, 102, "pH Buffers & Industrial Scale Inhibitors", "Dense soda ash, dry acid sodium bisulfate, and organophosphonate antiscalants."),

    (1031, 103, "Architectural Tiles & Glass Mosaics", "Frost-proof porcelain mosaics, architectural step treads, and vitreous swimming pool tiles."),
    (1032, 103, "Industrial Epoxy & Floor Coatings", "Two-part high-build solvent-free floor epoxies, antimicrobial urethanes, and screeds."),
    (1033, 103, "Structural Sealants & Waterproofing", "Submersible polyurethane joint sealants, crystalline slurry waterproofing, and elastomeric tapes."),

    (1041, 104, "Corrugated Shipping Boxes & Cartons", "Heavy-duty 5-ply and 7-ply kraft export shipping boxes and die-cut RSC master cartons."),
    (1042, 104, "Industrial Stretch Film & Strapping", "High-performance blown machine stretch wrap, manual pallet shrink films, and PET strapping bands."),
    (1043, 104, "Wooden Pallets & Heavy Crates", "ISPM-15 heat-treated hardwood Euro pallets, CP-3 chemical pallets, and custom industrial skids."),

    (1051, 105, "Wholesale Blank T-Shirts & Hoodies", "Combed ring-spun 240 GSM oversized tees, 400 GSM French terry hoodies for bulk screenprinters."),
    (1052, 105, "Industrial Workwear & Utility Pants", "Ripstop cargo utility trousers, reinforced knee mechanics pants, and heavy cotton drill boiler suits."),
    (1053, 105, "High-Visibility & Safety Apparel", "Class 2 EN ISO 20471 reflective safety vests, breathable hi-vis surveyor jackets, and rain parkas."),

    (1061, 106, "High-Tensile Hex Bolts & Structural Nuts", "Grade 8.8 and 10.9 hot-dip galvanized hex bolts, nylon lock nuts, and DIN 125 flat washers."),
    (1062, 106, "Scaffolding Clamps & Swivel Couplers", "Drop-forged EN 74 certified swivel couplers, double right-angle fittings, and sleeve clamps."),
    (1063, 106, "Steel Wire Ropes & Rigging Hardware", "Galvanized 7x19 aircraft wire ropes, wire rope thimbles, turnbuckles, and safety bow shackles."),

    (1071, 107, "Sterile Nitrile Gloves & PPE", "Powder-free textured nitrile exam gloves, Class 100 cleanroom gloves, and surgical face shields."),
    (1072, 107, "Borosilicate Glass Vials & Test Tubes", "USP Type I 3.3 borosilicate serum vials, cryogenic sample tubes, and graduated volumetric cylinders."),
    (1073, 107, "Specimen Containers & Lab Consumables", "Leak-proof 100ml sterile urine cups, polypropylene centrifuge tubes, and petri dish packs."),

    (1081, 108, "925 Sterling Silver Chains & Necklaces", "Solid Italian 925 sterling silver diamond-cut Cuban link, Figaro, and rope chains in bulk lots."),
    (1082, 108, "18K Gold Vermeil Moissanite Rings", "2.5-micron 18K yellow gold plated 925 silver solitaire rings with D-color VVS1 moissanite gemstones."),
    (1083, 108, "Natural Semi-Precious Beaded Bracelets", "Grade AAA natural tiger eye, matte black onyx, and lapis lazuli 8mm beaded stretch bracelets.")
]

filter_groups = [
    (1, "Material & Alloy Grade"),
    (2, "Product Form & Output"),
    (3, "Certification & Standards"),
    (4, "Storage & Climate Protocol"),
    (5, "Wholesale Volume MOQ")
]

filters = [
    # Group 1: Material & Alloy Grade
    (101, 1, "SS 316 / SS 304 Stainless"),
    (102, 1, "Grade 8.8 / 10.9 Alloy Steel"),
    (103, 1, "925 Sterling Silver"),
    (104, 1, "18K Gold Vermeil"),
    (105, 1, "100% Combed Cotton"),
    (106, 1, "Borosilicate 3.3 Glass"),
    (107, 1, "Medical Grade Nitrile"),
    (108, 1, "Virgin Heavy Kraft Paper"),
    (109, 1, "Cast LLDPE Polymer"),
    (110, 1, "Technical Calcium Hypochlorite"),
    
    # Group 2: Product Form & Output
    (201, 2, "Submersible Heavy-Duty"),
    (202, 2, "High-Flow Multistage"),
    (203, 2, "240-280 GSM Medium-Heavy"),
    (204, 2, "400+ GSM Heavyweight"),
    (205, 2, "Structural Metric M12-M24"),
    (206, 2, "Bulk 25kg / 50kg Drum/Pail"),
    (207, 2, "Master Pack 50 / 100"),
    (208, 2, "Case of 1000 Units"),

    # Group 3: Certification & Standards
    (301, 3, "ISO 9001 Certified"),
    (302, 3, "DIN 933 / DIN 934 Standard"),
    (303, 3, "ASTM Heavy Structural"),
    (304, 3, "BIS / ISI Marked"),
    (305, 3, "EN 455 / EN 388 Certified"),
    (306, 3, "USP Type I Pharmaceutical"),
    (307, 3, "ISPM-15 Heat Treated"),

    # Group 4: Storage & Climate Protocol
    (401, 4, "Climate-Safe Certified"),
    (402, 4, "Indefinite Ambient Shelf Life"),
    (403, 4, "Anti-Tarnish Vacuum Packaged"),
    (404, 4, "Moisture-Barrier Hermetic Pail"),
    (405, 4, "Dry Warehouse Stacking"),

    # Group 5: Wholesale Volume MOQ
    (501, 5, "Low MOQ (10–50 units)"),
    (502, 5, "Medium MOQ (50–200 units)"),
    (503, 5, "Factory Bulk MOQ (200+ units)")
]

# 42 Brand New Products (IDs 61 to 102)
# Fields: (id, parent_cat, sub_cat, model, name, price, qty, moq, image, weight, filters, desc, seller_id, pool_tiers)
new_products = [
    # --- Category 101: Commercial Equipment & Pumps ---
    (61, 101, 1011, "TX-10HP-SLURRY", "Titan-X 10HP Heavy Industrial Cast Iron Slurry Submersible Pump", 18500.0, 50, 10,
     "catalog/poolbuy/prod_pump-160x160.jpg", 48.0, [101, 201, 301, 401, 402, 501],
     "Rugged non-clogging cast iron casing with chrome alloy agitator. Engineered for high-solids quarry and construction pit drainage.", 1,
     [(1, 9, 18500.0), (10, 24, 16800.0), (25, 0, 15200.0)]),

    (62, 101, 1011, "SS-SUMP-2HP", "Stainless Steel SS 316 Chemical Effluent Submersible Pump (2HP)", 12400.0, 80, 15,
     "catalog/poolbuy/prod_pump-160x160.jpg", 22.0, [101, 201, 301, 401, 402, 501],
     "Corrosion-proof 316 stainless pump for aggressive industrial chemical effluent, food processing, and saltwater discharge.", 1,
     [(1, 14, 12400.0), (15, 29, 11200.0), (30, 0, 9950.0)]),

    (63, 101, 1012, "FRP-VESSEL-64", "Commercial FRP Composite Pressure Vessels 64-Inch with Top/Bottom Flanges", 14200.0, 40, 8,
     "catalog/poolbuy/prod_filters-160x160.jpg", 38.0, [101, 202, 301, 401, 402, 501],
     "Seamless structural fiberglass inner shell rated to 150 PSI. Designed for large commercial RO pretreatment and iron removal plants.", 2,
     [(1, 7, 14200.0), (8, 19, 12900.0), (20, 0, 11500.0)]),

    (64, 101, 1012, "QS-SAND-50KG", "High-Purity Graded Quartz Silica Sand Filter Media (Bulk 50kg Bags)", 650.0, 500, 50,
     "catalog/poolbuy/prod_filters-160x160.jpg", 50.0, [101, 206, 304, 401, 402, 502],
     "Sub-angular 0.45mm-0.85mm washed, kiln-dried quartz filter media meeting AWWA B100 standards for municipal and industrial filters.", 2,
     [(1, 49, 650.0), (50, 149, 570.0), (150, 0, 490.0)]),

    (65, 101, 1013, "BOOST-VERT-5HP", "Vertical Multistage Inline Pressure Booster Pump 5HP Tri-Phase", 26500.0, 30, 5,
     "catalog/poolbuy/prod_pump-160x160.jpg", 36.0, [101, 202, 301, 401, 402, 501],
     "Quiet high-efficiency tri-phase stainless booster motor. Built for commercial HVAC circulation and boiler feed operations.", 1,
     [(1, 4, 26500.0), (5, 11, 24000.0), (12, 0, 21800.0)]),

    # --- Category 102: Chemicals & Water Treatment ---
    (66, 102, 1021, "TCCA-90-TABLETS", "Trichloroisocyanuric Acid 90% (TCCA 90) Slow-Release Tablets (50kg Drum)", 7800.0, 120, 10,
     "catalog/poolbuy/prod_chlorine-160x160.jpg", 50.0, [110, 206, 301, 401, 404, 501],
     "Dry stabilized 200g tablets delivering 90% available chlorine for algae prevention and continuous bacterial eradication.", 3,
     [(1, 9, 7800.0), (10, 29, 7100.0), (30, 0, 6400.0)]),

    (67, 102, 1021, "SOD-HYPO-50L", "Commercial Sodium Hypochlorite 12.5% Industrial Liquid Sanitizer (50L Carboy)", 1450.0, 200, 20,
     "catalog/poolbuy/prod_chlorine-160x160.jpg", 60.0, [110, 206, 304, 401, 404, 501],
     "Concentrated NSF-60 certified liquid bleach solution for potable water dosing, industrial CIP systems, and pool sanitization.", 3,
     [(1, 19, 1450.0), (20, 49, 1280.0), (50, 0, 1120.0)]),

    (68, 102, 1022, "FERRIC-SULF-50KG", "Liquid Ferric Sulfate Industrial Coagulant & Odor Control (50kg Pail)", 3200.0, 150, 15,
     "catalog/poolbuy/prod_chlorine-160x160.jpg", 50.0, [110, 206, 301, 401, 404, 501],
     "High-potency inorganic iron coagulant for rapid turbidity settlement, phosphorus precipitation, and H2S odor elimination.", 3,
     [(1, 14, 3200.0), (15, 39, 2850.0), (40, 0, 2490.0)]),

    (69, 102, 1023, "SODA-ASH-DENSE-50", "Pure Sodium Carbonate Dense Soda Ash 99.2% pH Booster (50kg Bag)", 1850.0, 300, 25,
     "catalog/poolbuy/prod_chlorine-160x160.jpg", 50.0, [110, 206, 304, 401, 404, 501],
     "Fast-dissolving industrial dense powder to raise total alkalinity and normalize acidic industrial boiler and pool process water.", 3,
     [(1, 24, 1850.0), (25, 74, 1620.0), (75, 0, 1420.0)]),

    (70, 102, 1023, "SCALE-INHIB-25L", "Organophosphonate Reverse Osmosis Antiscalant & Dispersant (25L Pail)", 5400.0, 100, 10,
     "catalog/poolbuy/prod_chlorine-160x160.jpg", 28.0, [110, 206, 301, 401, 404, 501],
     "Super-threshold scale inhibitor preventing calcium carbonate, barium sulfate, and silica scaling across RO membranes.", 3,
     [(1, 9, 5400.0), (10, 24, 4850.0), (25, 0, 4300.0)]),

    # --- Category 103: Building & Materials ---
    (71, 103, 1031, "GLS-MOSAIC-DEEP", "Vitreous Cobalt Deep Blue Glass Mosaic Sheets (Box of 20 Sheets / 2 SqM)", 2450.0, 250, 20,
     "catalog/poolbuy/prod_tiles-160x160.jpg", 18.0, [106, 207, 301, 401, 402, 501],
     "Non-absorbent mesh-backed 25mm x 25mm glass mosaic tiles with high thermal shock and acid resistance for wet commercial interiors.", 2,
     [(1, 19, 2450.0), (20, 59, 2180.0), (60, 0, 1950.0)]),

    (72, 103, 1031, "ANTI-SLIP-PORC-300", "Commercial Anti-Slip R11 Porcelain Flooring Tiles 300x300mm (Box of 12)", 1350.0, 400, 30,
     "catalog/poolbuy/prod_tiles-160x160.jpg", 24.0, [106, 207, 301, 401, 402, 501],
     "Heavy commercial R11 slip-resistant vitrified tiles engineered for warehouse corridors, shower locker rooms, and wet ramps.", 2,
     [(1, 29, 1350.0), (30, 99, 1180.0), (100, 0, 1020.0)]),

    (73, 103, 1032, "EPOXY-PRIMER-10L", "Solvent-Free Moisture-Tolerant Concrete Epoxy Primer (10L Set)", 4200.0, 180, 10,
     "catalog/poolbuy/prod_tiles-160x160.jpg", 12.0, [101, 206, 301, 401, 404, 501],
     "Deep-penetrating 100% solids primer for green concrete surfaces ensuring high tensile adhesion for topcoat screeds.", 2,
     [(1, 9, 4200.0), (10, 24, 3750.0), (25, 0, 3300.0)]),

    (74, 103, 1033, "PU-JOINT-SEALANT", "Submersible Heavy-Duty Polyurethane Joint Sealant 600ml Sausage (Box of 20)", 5800.0, 160, 12,
     "catalog/poolbuy/prod_tiles-160x160.jpg", 16.0, [101, 207, 301, 401, 402, 501],
     "High-movement elastomeric PU sealant for expansion joints subject to continuous submersion, vibration, and thermal cycling.", 2,
     [(1, 11, 5800.0), (12, 29, 5100.0), (30, 0, 4500.0)]),

    (75, 103, 1033, "CRYST-WATERPROOF-25", "Crystalline Capillary Slurry Waterproofing Compound (25kg Bag)", 2250.0, 220, 20,
     "catalog/poolbuy/prod_tiles-160x160.jpg", 25.0, [101, 206, 301, 401, 405, 501],
     "In-depth active crystalline chemical treatment reacting with concrete moisture to seal micro-cracks permanently.", 2,
     [(1, 19, 2250.0), (20, 49, 1980.0), (50, 0, 1750.0)]),

    # --- Category 104: Packaging & Logistics ---
    (76, 104, 1041, "7PLY-EXPORT-BOX", "7-Ply Triple-Wall Heavy Industrial Export Shipping Cartons (Bundle of 25)", 3850.0, 300, 15,
     "catalog/poolbuy/prod_cartons-160x160.jpg", 32.0, [108, 207, 301, 401, 405, 501],
     "Heavyweight 400lb burst strength triple-wall kraft boxes designed for heavy machinery parts and international container shipping.", 4,
     [(1, 14, 3850.0), (15, 39, 3400.0), (40, 0, 2980.0)]),

    (77, 104, 1041, "DIE-CUT-MAILER-100", "Self-Locking Kraft Die-Cut Subscription Mailer Boxes (Pack of 100)", 1650.0, 500, 30,
     "catalog/poolbuy/prod_cartons-160x160.jpg", 14.0, [108, 207, 301, 401, 405, 501],
     "Clean E-flute folding mailers with reinforced front flaps for premium e-commerce logistics and fulfillment distribution.", 4,
     [(1, 29, 1650.0), (30, 99, 1420.0), (100, 0, 1220.0)]),

    (78, 104, 1042, "PET-STRAP-ROLL", "Heavy Duty Green Polyester (PET) Embossed Strapping Roll (16mm x 2000m)", 2750.0, 200, 10,
     "catalog/poolbuy/prod_cartons-160x160.jpg", 21.0, [109, 207, 301, 401, 402, 501],
     "Steel-strength 450kg break load PET strap engineered to withstand thermal expansion and retain pallet tension in transit.", 4,
     [(1, 9, 2750.0), (10, 24, 2400.0), (25, 0, 2100.0)]),

    (79, 104, 1042, "MANUAL-STRETCH-50", "Cast Manual Hand Stretch Film Wrap 23 Micron (Carton of 6 Rolls)", 2100.0, 350, 20,
     "catalog/poolbuy/prod_cartons-160x160.jpg", 15.0, [109, 207, 301, 401, 402, 501],
     "Silent unwinding puncture-resistant cast cling stretch film roll for fast manual pallet stabilization in high-throughput facilities.", 4,
     [(1, 19, 2100.0), (20, 59, 1850.0), (60, 0, 1600.0)]),

    (80, 104, 1043, "CP3-CHEM-PALLET", "CP-3 Heavy-Duty Chemical Grade Heat-Treated Wooden Pallets (Lot of 15)", 11800.0, 80, 5,
     "catalog/poolbuy/prod_cartons-160x160.jpg", 450.0, [108, 207, 307, 401, 405, 501],
     "Robust 1140 x 1140mm chemical pallet designed for 4-drum storage and multi-tier stack racking. Certified ISPM-15 IPPC stamped.", 4,
     [(1, 4, 11800.0), (5, 14, 10500.0), (15, 0, 9400.0)]),

    # --- Category 105: Textiles & Apparel ---
    (81, 105, 1051, "TX-280-POLO", "Heavyweight 280 GSM Pique Cotton Corporate Uniform Polo Shirts (Bulk Lot of 50)", 16500.0, 150, 10,
     "catalog/poolbuy/prod_tshirt-160x160.jpg", 18.0, [105, 203, 301, 401, 402, 501],
     "Combed organic cotton double-pique knit with reinforced collar bands and mother-of-pearl buttons for corporate uniforms.", 5,
     [(1, 9, 16500.0), (10, 24, 14800.0), (25, 0, 13200.0)]),

    (82, 105, 1051, "TX-320-CREWNECK", "Wholesale 320 GSM Heavyweight Terry Fleece Crewneck Sweatshirts (Pack of 30)", 14200.0, 120, 10,
     "catalog/poolbuy/prod_tshirt-160x160.jpg", 17.0, [105, 203, 301, 401, 402, 501],
     "Pre-shrunk 100% cotton diagonal loopback French terry blanks tailored for screen printing and premium garment branding.", 5,
     [(1, 9, 14200.0), (10, 24, 12600.0), (25, 0, 11100.0)]),

    (83, 105, 1052, "TX-BOILERSUIT-HD", "Heavy 310 GSM 100% Cotton Drill Industrial Mechanic Boilersuit (Case of 20)", 18900.0, 90, 8,
     "catalog/poolbuy/prod_tshirt-160x160.jpg", 22.0, [105, 203, 301, 401, 402, 501],
     "Double-stitched stress points with two-way heavy brass zippers and action back for unrestricted workshop and shipyard mobility.", 5,
     [(1, 7, 18900.0), (8, 19, 16900.0), (20, 0, 15100.0)]),

    (84, 105, 1053, "TX-HIVIS-PARKA", "Class 3 EN ISO 20471 Waterproof Breathable Hi-Vis Winter Parka (Pack of 15)", 21500.0, 70, 6,
     "catalog/poolbuy/prod_tshirt-160x160.jpg", 19.0, [105, 204, 305, 401, 402, 501],
     "Fluorescent Oxford weave jacket with welded waterproof seams, storm flap, and 3M Scotchlite 360-degree reflective bands.", 5,
     [(1, 5, 21500.0), (6, 14, 19200.0), (15, 0, 17100.0)]),

    # --- Category 106: Industrial Hardware & Fasteners ---
    (85, 106, 1061, "HD-BOLT-109-M16", "Grade 10.9 Metric Hex Head Bolts Zinc Flake Coated M16x80mm (Box of 200)", 4200.0, 250, 15,
     "catalog/poolbuy/prod_fasteners-160x160.jpg", 28.0, [102, 205, 302, 401, 402, 501],
     "Quenched and tempered high-tensile 10.9 structural bolts compliant with DIN 931. Salt-spray corrosion tested over 1000 hours.", 1,
     [(1, 14, 4200.0), (15, 39, 3700.0), (40, 0, 3250.0)]),

    (86, 106, 1061, "HD-NYLOC-NUT-M16", "High-Tensile Grade 10 Nylon Insert Lock Nuts M16 DIN 985 (Pack of 500)", 2650.0, 300, 20,
     "catalog/poolbuy/prod_fasteners-160x160.jpg", 18.0, [102, 205, 302, 401, 402, 501],
     "Vibration-resistant self-locking prevailing torque hex nuts designed to maintain clamping force in extreme cyclic conditions.", 1,
     [(1, 19, 2650.0), (20, 49, 2300.0), (50, 0, 1990.0)]),

    (87, 106, 1062, "SCAF-RIGHT-ANGLE", "Drop-Forged Heavy Scaffold Double Right-Angle Couplers EN 74 (Box of 25)", 3450.0, 220, 15,
     "catalog/poolbuy/prod_fasteners-160x160.jpg", 30.0, [102, 207, 301, 401, 402, 501],
     "Heavy-duty 48.3mm structural scaffolding right-angle fittings hot-dip galvanized for extreme outdoor construction and staging rigs.", 1,
     [(1, 14, 3450.0), (15, 39, 3050.0), (40, 0, 2700.0)]),

    (88, 106, 1063, "RIG-BOW-SHACKLE", "Drop-Forged G-209 Galvanized Safety Bow Shackles 4.75 Ton WLL (Box of 10)", 3900.0, 180, 12,
     "catalog/poolbuy/prod_fasteners-160x160.jpg", 24.0, [102, 205, 303, 401, 402, 501],
     "Alloy steel quenched and tempered safety bow shackle with cotter pin screw pin. Proof-tested to 2x Working Load Limit.", 1,
     [(1, 11, 3900.0), (12, 29, 3450.0), (30, 0, 3050.0)]),

    (89, 106, 1063, "SS-TURNBUCKLE-M20", "Stainless Steel SS 316 Jaw-and-Jaw Rigging Turnbuckles M20 (Box of 6)", 4800.0, 140, 10,
     "catalog/poolbuy/prod_fasteners-160x160.jpg", 16.0, [101, 205, 301, 401, 402, 501],
     "Marine-grade polished 316 stainless closed-body turnbuckle for architectural wire rigging, marine yachting, and tensile canopies.", 1,
     [(1, 9, 4800.0), (10, 24, 4250.0), (25, 0, 3750.0)]),

    # --- Category 107: Medical & Laboratory ---
    (90, 107, 1071, "MD-SURG-SHIELD-100", "Anti-Fog Medical Grade Full Face Protection Shields (Box of 100)", 2400.0, 300, 20,
     "catalog/poolbuy/prod_nitrile-160x160.jpg", 10.0, [107, 207, 305, 401, 402, 501],
     "Optically clear PET visor with breathable foam brow pad and latex-free elastic strap for healthcare splash protection.", 4,
     [(1, 19, 2400.0), (20, 49, 2080.0), (50, 0, 1800.0)]),

    (91, 107, 1071, "MD-ISOL-GOWN-50", "AAMI Level 3 Fluid-Resistant Sterile Isolation Gowns (Pack of 50)", 3250.0, 240, 15,
     "catalog/poolbuy/prod_nitrile-160x160.jpg", 12.0, [107, 207, 305, 401, 402, 501],
     "Non-woven SMS multi-ply fabric providing hydrostatic resistance against bloodborne pathogens and hospital fluid transfer.", 4,
     [(1, 14, 3250.0), (15, 39, 2850.0), (40, 0, 2500.0)]),

    (92, 107, 1072, "GLS-TESTTUBE-500", "Graduated Borosilicate 3.3 Glass Test Tubes with Rim 16x150mm (Pack of 500)", 2950.0, 200, 15,
     "catalog/poolbuy/prod_vials-160x160.jpg", 14.0, [106, 207, 306, 401, 402, 501],
     "Thermal shock resistant glass test tubes with uniform wall thickness and fire-polished beaded rims for diagnostic laboratories.", 4,
     [(1, 14, 2950.0), (15, 39, 2600.0), (40, 0, 2280.0)]),

    (93, 107, 1073, "LAB-CENTRIFUGE-500", "Sterile Polypropylene Conical Centrifuge Tubes 50ml Leakproof (Case of 500)", 3800.0, 180, 12,
     "catalog/poolbuy/prod_vials-160x160.jpg", 11.0, [107, 208, 306, 401, 402, 501],
     "High-clarity virgin polypropylene tubes with frosted writing surface and deep-skirt flat caps rated to 12,000 RCF centrifugation.", 4,
     [(1, 11, 3800.0), (12, 29, 3350.0), (30, 0, 2950.0)]),

    (94, 107, 1073, "LAB-PETRI-DISH-500", "Sterile Polystyrene Bacteriological Petri Dishes 90x15mm (Case of 500)", 2200.0, 260, 20,
     "catalog/poolbuy/prod_vials-160x160.jpg", 8.0, [107, 208, 306, 401, 402, 501],
     "Gamma irradiated crystal-clear vented polystyrene dishes ensuring uniform culture media depth and optimal gas exchange.", 4,
     [(1, 19, 2200.0), (20, 49, 1920.0), (50, 0, 1680.0)]),

    # --- Category 108: Jewellery & Accessories ---
    (95, 108, 1081, "JW-SILV-FIGARO", "Solid 925 Sterling Silver Italian Figaro Chain Necklaces (Wholesale Lot of 25)", 14800.0, 100, 10,
     "catalog/poolbuy/jewellery_silver_chain.png", 6.0, [103, 207, 301, 401, 403, 501],
     "Authentic Italian stamped 925 high-polish diamond-cut Figaro 3+1 link chains (20-inch, 4.5mm) with lobster claw clasps.", 5,
     [(1, 9, 14800.0), (10, 24, 13200.0), (25, 0, 11800.0)]),

    (96, 108, 1081, "JW-SILV-ROPE-CHAIN", "Diamond-Cut Solid 925 Sterling Silver Rope Chains 3.5mm (Lot of 30)", 16200.0, 90, 8,
     "catalog/poolbuy/jewellery_silver_chain.png", 7.5, [103, 207, 301, 401, 403, 501],
     "High-tensile woven French rope chain diamond-cut for extreme light refraction. Anti-tarnish coated for long retail shelf life.", 5,
     [(1, 7, 16200.0), (8, 19, 14500.0), (20, 0, 12900.0)]),

    (97, 108, 1082, "JW-GOLD-VERMEIL-EARRING", "18K Gold Vermeil 925 Silver Chunky Waterdrop Hoop Earrings (Lot of 40 Pairs)", 12500.0, 120, 10,
     "catalog/poolbuy/jewellery_moissanite_ring.png", 5.0, [104, 207, 301, 401, 403, 501],
     "Substantial 2.5-micron 18K yellow gold plated over solid sterling silver. Hypoallergenic lightweight hollow-form casting.", 5,
     [(1, 9, 12500.0), (10, 24, 11100.0), (25, 0, 9800.0)]),

    (98, 108, 1082, "JW-MOISS-ETERNITY", "18K Gold Vermeil Full Eternity Moissanite Bands 2mm (Wholesale Lot of 30)", 21000.0, 80, 8,
     "catalog/poolbuy/jewellery_moissanite_ring.png", 4.0, [104, 207, 301, 401, 403, 501],
     "Exquisite shared-prong channel set with GRA certified D-Color VVS1 lab moissanite gemstones around solid 925 vermeil bands.", 5,
     [(1, 7, 21000.0), (8, 19, 18800.0), (20, 0, 16900.0)]),

    (99, 108, 1083, "JW-ONYX-BRACELET", "Matte Black Onyx & Lava Rock 8mm Beaded Aromatherapy Bracelets (Lot of 100)", 8200.0, 180, 15,
     "catalog/poolbuy/jewellery_beaded_bracelet.png", 8.0, [103, 207, 301, 401, 403, 501],
     "Hand-selected natural matte black onyx beads strung on Japanese dual-strand elastic cord. Ideal impulse jewelry for retailers.", 5,
     [(1, 14, 8200.0), (15, 39, 7300.0), (40, 0, 6500.0)]),

    (100, 108, 1083, "JW-LAPIS-BRACELET", "Natural Deep Blue Lapis Lazuli Grade AAA 8mm Beaded Bracelets (Lot of 60)", 10500.0, 110, 10,
     "catalog/poolbuy/jewellery_beaded_bracelet.png", 6.0, [103, 207, 301, 401, 403, 501],
     "Rich ultramarine blue natural lapis lazuli stones with golden pyrite flecks, hand-knotted on stretch cords for luxury gift collections.", 5,
     [(1, 9, 10500.0), (10, 24, 9400.0), (25, 0, 8300.0)]),

    (101, 106, 1062, "SCAF-SWIVEL-HEAVY", "Heavy Duty Drop-Forged Swivel Scaffolding Clamp Couplers EN 74-B (Box of 25)", 3600.0, 200, 15,
     "catalog/poolbuy/prod_fasteners-160x160.jpg", 31.0, [102, 207, 301, 401, 402, 501],
     "Certified Class B scaffolding swivel clamp permitting 360-degree cross-diagonal brace bracing on heavy access towers.", 1,
     [(1, 14, 3600.0), (15, 39, 3200.0), (40, 0, 2850.0)]),

    (102, 107, 1071, "MD-EXAM-NITRILE-XL", "Industrial Chemical & Chemo-Tested Heavy Nitrile Gloves 6 Mil (Case of 1000)", 4200.0, 250, 20,
     "catalog/poolbuy/prod_nitrile-160x160.jpg", 9.0, [107, 208, 305, 401, 402, 501],
     "Thick 6.0 mil puncture-resistant examination gloves with textured fingertips for heavy industrial chemical handling and clinical cleanrooms.", 4,
     [(1, 19, 4200.0), (20, 49, 3750.0), (50, 0, 3350.0)])
]

def generate_sql():
    sql = []
    sql.append("-- ==============================================================================")
    sql.append("-- PoolBuy B2B Catalog Expansion: Subcategories, Faceted Filters & 40+ Products")
    sql.append("-- ==============================================================================")
    sql.append("USE `opencart`;\n")

    # 1. Subcategories
    sql.append("-- 1. Subcategories")
    for cat_id, parent_id, name, desc in categories:
        sql.append(f"""
INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES ({cat_id}, {parent_id}, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES ({cat_id}, 1, '{name}', '{desc}', '{name} - B2B Wholesale PoolBuy', '{desc}', '{name.lower()}, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES ({cat_id}, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES ({cat_id}, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = {cat_id};
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
({cat_id}, {parent_id}, 0),
({cat_id}, {cat_id}, 1);
""")

    # 2. Filter Groups & Filters
    sql.append("\n-- 2. Filter Groups & Filters")
    for fg_id, fg_name in filter_groups:
        sql.append(f"""
INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES ({fg_id}, {fg_id})
ON DUPLICATE KEY UPDATE `sort_order` = VALUES(`sort_order`);

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`)
VALUES ({fg_id}, 1, '{fg_name}')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);
""")

    for f_id, fg_id, f_name in filters:
        sql.append(f"""
INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES ({f_id}, {fg_id}, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES ({f_id}, 1, '{f_name}')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);
""")

    # 3. Associate Filters with Categories
    sql.append("\n-- 3. Category to Filter Association (Link all filters to relevant categories)")
    all_cats = [101, 102, 103, 104, 105, 106, 107, 108] + [c[0] for c in categories]
    for cat_id in all_cats:
        for f_id, _, _ in filters:
            sql.append(f"INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES ({cat_id}, {f_id});")

    # 4. Activate Filter Module on Category Layout
    sql.append("\n-- 4. Enable OpenCart Filter Module on Category Layout (layout_id = 3)")
    sql.append("""
INSERT IGNORE INTO `oc_extension` (`extension`, `type`, `code`) VALUES ('opencart', 'module', 'filter');
DELETE FROM `oc_setting` WHERE `store_id` = 0 AND `code` = 'module_filter';
INSERT INTO `oc_setting` (`store_id`, `code`, `key`, `value`, `serialized`) VALUES (0, 'module_filter', 'module_filter_status', '1', 0);

DELETE FROM `oc_layout_module` WHERE `layout_id` = 3 AND `code` = 'opencart.filter';
INSERT INTO `oc_layout_module` (`layout_id`, `code`, `position`, `sort_order`)
VALUES (3, 'opencart.filter', 'column_left', 2);
""")

    # 5. Insert Products
    sql.append("\n-- 5. Products, Attributes, Category Mappings & Filters")
    for prod in new_products:
        pid, pcat, scat, model, name, price, qty, moq, img, wt, fltrs, desc, seller_id, tiers = prod
        sql.append(f"""
INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES ({pid}, 0, '{model}', 'Main Warehouse', '', '',
        {qty}, 7, '{img}', 0, 1, {price:.4f}, 0,
        0, NOW(), {wt:.4f}, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES ({pid}, 1, '{name}', '{desc}', '{name}', '{name} - Bulk Wholesale PoolBuy', '{desc}', 'wholesale, bulk, b2b, {model}')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES ({pid}, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES ({pid}, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = {pid};
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
({pid}, {pcat}),
({pid}, {scat});
""")
        # Link product filters
        for fid in fltrs:
            sql.append(f"INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES ({pid}, {fid});")

        # Standard technical attributes
        sql.append(f"""
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
({pid}, 111, 1, 'Industrial Grade Spec'),
({pid}, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
({pid}, 131, 1, 'Master Carton / Industrial Pail'),
({pid}, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);
""")

        # Co-buying Pool for product
        ref = f"PB-{model[:8]}-{pid}"
        target_qty = moq * 5
        res_qty = int(target_qty * 0.45)
        sql.append(f"""
DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = {pid};
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES ({pid}, {seller_id}, '{name}', '{ref}', {target_qty}, {res_qty},
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, {moq}, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{{"climate_safe":1,"grade":"A"}}', 1, NOW(), NOW());
""")

        # Tiers
        sql.append(f"DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = {pid});")
        for sort_idx, (min_q, max_q, t_price) in enumerate(tiers, 1):
            max_val = f"'{max_q}'" if max_q > 0 else "NULL"
            sql.append(f"""
INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, {min_q}, {max_val}, {t_price:.4f}, {sort_idx}
FROM `oc_poolbuy_pool` WHERE `product_id` = {pid};
""")

    # Also associate existing products (28-54) with appropriate filters
    sql.append("\n-- 6. Associate existing products with appropriate filters")
    existing_mappings = [
        (28, [101, 201, 301, 401, 402, 501]),
        (29, [101, 202, 301, 401, 402, 501]),
        (31, [101, 201, 301, 401, 402, 501]),
        (32, [110, 206, 301, 401, 404, 501]),
        (33, [102, 207, 301, 401, 402, 501]),
        (34, [102, 205, 302, 401, 402, 501]),
        (35, [108, 207, 301, 401, 405, 501]),
        (36, [106, 207, 301, 401, 402, 501]),
        (40, [102, 205, 303, 401, 402, 501]),
        (41, [106, 208, 306, 401, 402, 501]),
        (42, [105, 203, 301, 401, 402, 501]),
        (43, [105, 204, 301, 401, 402, 501]),
        (44, [105, 203, 301, 401, 402, 501]),
        (45, [105, 203, 305, 401, 402, 501]),
        (46, [109, 207, 301, 401, 402, 501]),
        (47, [108, 207, 307, 401, 405, 501]),
        (48, [101, 206, 301, 401, 404, 501]),
        (49, [110, 206, 301, 401, 404, 501]),
        (51, [107, 208, 305, 401, 402, 501]),
        (52, [103, 207, 301, 401, 403, 501]),
        (53, [104, 207, 301, 401, 403, 501]),
        (54, [103, 207, 301, 401, 403, 501])
    ]
    for pid, fids in existing_mappings:
        for fid in fids:
            sql.append(f"INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES ({pid}, {fid});")

    return "\n".join(sql)

if __name__ == "__main__":
    out_path = r"c:\1. transfer\GOGO\poolbuy\tools\poolbuy\seed_catalog_expansion.sql"
    sql_content = generate_sql()
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(sql_content)
    print(f"Generated {out_path} ({len(sql_content)} bytes)")

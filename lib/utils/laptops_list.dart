import 'package:uuid/uuid.dart';

import '../models/models.dart';

///Laptops List
final laptopList = <Product>[
  ///Macbook
  Product(
    id: const Uuid().v1(),
    title: 'MacBook Air (2020)',
    description: """
    • Apple-designed M1 chip for a giant leap in CPU, GPU, and machine learning performance
    • Go longer than ever with up to 18 hours of battery life
    • 8-core CPU delivers up to 3.5x faster performance to tackle projects faster than ever
    • Up to eight GPU cores with up to 5x faster graphics for graphics-intensive apps and games
    • 16-core Neural Engine for advanced machine learning
""",
    price: 999,
    brand: 'Apple',
    images: [
      'assets/images/macbook.webp',
      'assets/images/macbook_1.webp',
      'assets/images/macbook_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'MacBook Air (2022)',
    description: """
    • M2 chip with next-generation CPU, GPU, and machine learning performance
    • Faster 8-core CPU and up to 10-core GPU to power through complex tasks²
    • 16-core Neural Engine for advanced machine learning tasks
    • Up to 24GB of faster-unified memory make everything you do super fluid
    • Up to 40 percent faster for editing complex video timelines²
    • Fanless design for silent operation
""",
    price: 1099,
    brand: 'Apple',
    images: [
      'assets/images/macbook_1.webp',
      'assets/images/macbook.webp',
      'assets/images/macbook_2.webp'
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'MacBook Pro 256GB',
    description: """
    • Stunning 14-inch Liquid Retina XDR display with extreme dynamic range and contrast ratio²
    • M2 Pro or M2 Max chip for exceptional speed and power
    • Up to 96GB of unified memory makes everything you do fast and fluid
    • Up to 18 hours of battery life¹
    • 1080p FaceTime HD camera
    • Six-speaker sound system with force-cancelling woofers
""",
    price: 1599,
    brand: 'Apple',
    images: [
      'assets/images/macbook_2.webp',
      'assets/images/macbook.webp',
      'assets/images/macbook_1.webp',
    ],
  ),

  ///Acer
  Product(
    id: const Uuid().v1(),
    title: 'acer Nitro 5 AN515-58-52GD Obsidian Black',
    description: """
    • Intel Core i5-12500H
    • 8GB DDR4 3200MHz 
    • PCIe M.2 SSD 512GB 
    • Nvidia Geforce RTX3050Ti 4GB GDDR6
    • Window 11
    • 15.6" FHD IPS
    • Weight 2.6kg
""",
    price: 2099,
    brand: 'ACER',
    images: [
      'assets/images/acer.jpeg',
      'assets/images/acer_1.jpeg',
      'assets/images/acer_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'acer SwifGo SFG14-71 Pure Silver',
    description: """
    • Intel Core i7-13620H
    • 16GB LPDDR5 
    • PCIe M.2 SSD 512GB 
    • Window 11
    • 14" 2.8K OLED
    • Weight 1.3kg
""",
    price: 1599,
    brand: 'ACER',
    images: [
      'assets/images/acer_1.jpeg',
      'assets/images/acer.jpeg',
      'assets/images/acer_2.webp'
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'acer Aspire 3 A315-510P-370W Pure Silver',
    description: """
    • Intel Core i3-N305
    • 8GB DDR5 3200MHz 
    • PCIe M.2 SSD 512GB 
    • Window 11
    • 15.6" FHD IPS
    • Weight 1.7kg
""",
    price: 1099,
    brand: 'ACER',
    images: [
      'assets/images/acer_2.webp',
      'assets/images/acer.jpeg',
      'assets/images/acer_1.jpeg',
    ],
  ),

  ///ASUS
  Product(
    id: const Uuid().v1(),
    title: 'ASUS Vivobook X1502ZA-BQ586W Quiet Blue',
    description: """
    • Intel Core i3-1215U
    • 8GB DDR4 3200MHz (1 slot free)
    • PCIe M.2 SSD 256GB 
    • Window 11
    • 15.6" FHD 1920x1080
    • Weight 1.7kg
""",
    price: 2099,
    brand: 'ASUS',
    images: [
      'assets/images/asus.webp',
      'assets/images/asus_1.webp',
      'assets/images/asus_2.webp',
      'assets/images/asus_3.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'ASUS Zenbook 14X UX3404VA-M9288WS Inkwell Grey',
    description: """
    • Intel Core i9-13900H
    • 16GB DDR5 6400MHz
    • PCIe M.2 SSD 1TB 
    • Window 11
    • 14.5" OLED WQ+ 2.8K 2880x1800
    • Weight 1.56kg
""",
    price: 1599,
    brand: 'ASUS',
    images: [
      'assets/images/asus_1.webp',
      'assets/images/asus.webp',
      'assets/images/asus_2.webp',
      'assets/images/asus_3.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'ASUS Expert Book L1400CDA-BV1015 Star Black',
    description: """
    • AMD Ryzen3-3250U
    • 8GB DDR4 3200MHz (Onboard 4GB + 4GB)
    • PCIe M.2 SSD 256GB (HDD Slot free) 
    • Window 11
    • 14" HD 1366x768
    • Weight 1.46kg
""",
    price: 1099,
    brand: 'ASUS',
    images: [
      'assets/images/asus_2.webp',
      'assets/images/asus.webp',
      'assets/images/asus_1.webp',
      'assets/images/asus_3.webp',
    ],
  ),

  ///HP
  Product(
    id: const Uuid().v1(),
    title: 'hp 15s-fq5072TU Natural Silver',
    description: """
    • Intel Core i7-1255U
    • 8GB DDR4
    • PCIe M.2 SSD 512GB
    • Window 11
    • 15.6" FHD
    • Weight 1.46kg
""",
    price: 2099,
    brand: 'HP',
    images: [
      'assets/images/hp.webp',
      'assets/images/hp_1.jpeg',
      'assets/images/hp_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'hp Probook 440 G8 Pike Silver Aluminium',
    description: """
    • Intel Core i5-1135G7
    • 8GB DDR4 3200MHz (8GB x 1)
    • PCIe M.2 SSD 512GB
    • Window 11
    • 14" FHD
    • Weight 1.46kg
""",
    price: 1599,
    brand: 'HP',
    images: [
      'assets/images/hp_1.jpeg',
      'assets/images/hp.webp',
      'assets/images/hp_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'hp 14s-dq2555TU Natural Silver',
    description: """
    • Intel Core i5-1135G7
    • 8GB DDR4 3200MHz (4GB x 2)
    • PCIe M.2 SSD 512GB
    • Window 11
    • 14" FHD
    • Weight 1.46kg
""",
    price: 1099,
    brand: 'HP',
    images: [
      'assets/images/hp_1.jpeg',
      'assets/images/hp.webp',
      'assets/images/hp_2.webp',
    ],
  ),

  ///lenovo
  Product(
    id: const Uuid().v1(),
    title: 'Lenovo V15 G3 ABA 82TV002VFT Iron Grey',
    description: """
    • AMD Ryzen3-5425U
    • 8GB DDR4 3200MHz (4GB x 2)
    • PCIe M.2 SSD 256GB
    • Window 11
    • 15.6" FHD 1920x1080
    • Weight 1.7kg
""",
    price: 2099,
    brand: 'LENOVO',
    images: [
      'assets/images/lenovo.webp',
      'assets/images/lenovo_1.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Lenovo Ideapad 1 15IGL7 Cloud Gray',
    description: """
    • Celeron - N4020
    • 4GB DDR4
    • PCIe M.2 SSD 256GB
    • Window 11
    • 15.6" FHD 1920x1080
    • Weight 1.54kg
""",
    price: 1599,
    brand: 'LENOVO',
    images: [
      'assets/images/lenovo_1.webp',
      'assets/images/lenovo.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Lenovo Thinkbook 14 Gen 4 21DHA0X2FT Mineral Grey',
    description: """
    • Intel Core i5 1235U
    • 8GB DDR4 3200MHz(1 slot free)
    • PCIe M.2 SSD 512GB
    • Window 11
    • 14" FHD 1920x1080
    • Nvidia Geforce MX550 2GB DDR6
""",
    price: 1099,
    brand: 'LENOVO',
    images: [
      'assets/images/lenovo.webp',
      'assets/images/lenovo_1.webp',
    ],
  ),
];

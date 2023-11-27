import 'package:uuid/uuid.dart';

import '../models/models.dart';

final mobilePhonesList = <Product>[
  ///iPhone
  Product(
    id: const Uuid().v1(),
    title: 'iPhone 15 Pro Max',
    description:
        'iPhone 15 Pro Max. Forged in titanium and featuring the groundbreaking A17 Pro chip, a customizable Action button, and the most powerful iPhone camera system ever.',
    price: 999,
    brand: 'iphone',
    images: [
      'assets/images/iphone_15.webp',
      'assets/images/iphone_15_1.webp',
      'assets/images/iphone_15_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'iPhone 15 Pro',
    description:
        'iPhone 15 Pro. Forged in titanium and featuring the groundbreaking A17 Pro chip, a customizable Action button, and a more versatile Pro camera system.',
    price: 1099,
    brand: 'iphone',
    images: [
      'assets/images/iphone_15_1.webp',
      'assets/images/iphone_15.webp',
      'assets/images/iphone_15_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'iPhone 15 Plus',
    description:
        'iPhone 15 Plus brings you Dynamic Island, a 48MP Main camera, and USB-C — all in a durable color-infused glass and aluminum design.',
    price: 1599,
    brand: 'iphone',
    images: [
      'assets/images/iphone_15_2.webp',
      'assets/images/iphone_15.webp',
      'assets/images/iphone_15_1.webp',
    ],
  ),

  ///Samsung
  Product(
    id: const Uuid().v1(),
    title: 'Samsung Galaxy S23 FE Mint (8GB/256GB)',
    description: """
  OS: Android 13.0
  RAM: 8 GB
  Product Dimensions: 0.8 x 7.7 x 15.8 cm; 209 Grams
  Batteries: 1 Lithium Ion batteries required. (included)
""",
    price: 1099,
    brand: 'samsung',
    images: [
      'assets/images/samsung_phone.webp',
      'assets/images/samsung_phone_1.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Samsung Galaxy M34 5G (8GB/128GB) Prism Silver',
    description: """
  Dimensions: 161.7 x 77.2 x 8.8 mm (6.37 x 3.04 x 0.35 in)
  Weight: 208 g (7.34 oz)
  SIM: Hybrid Dual SIM (Nano-SIM, dual stand-by)
""",
    price: 499,
    brand: 'samsung',
    images: [
      'assets/images/samsung_phone_1.webp',
      'assets/images/samsung_phone.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Samsung Galaxy A05s (6GB/128GB) Silver',
    description: """
  Dimensions: 168 x 77.8 x 8.8 mm (6.61 x 3.06 x 0.35 in)
  Weight: 194 g (6.84 oz)
  Build: Glass front, plastic back, plastic frame
  SIM: Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)
""",
    price: 899,
    brand: 'samsung',
    images: [
      'assets/images/samsung_phone.webp',
      'assets/images/samsung_phone_1.webp',
    ],
  ),

  ///Oppo
  Product(
    id: const Uuid().v1(),
    title: 'Oppo A17 Lake Blue (4GB/64GB)',
    description: """
  Display Size: 6.56"
  Resolution: 1612 x 720 Pixels
  Resolution Type: HD+
  GPU: IMG GE8320
""",
    price: 599,
    brand: 'oppo',
    images: [
      'assets/images/oppo_3.webp',
      'assets/images/oppo_1.webp',
      'assets/images/oppo_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Oppo A77 Sunset Orange',
    description: """
  Screen Resolution: 1612 x 720
  Screen Size (Diagonal): 16.66 cm (6.56 Inch)
  Display Type: HD+
  Memory (RAM): 4 GB
""",
    price: 399,
    brand: 'oppo',
    images: [
      'assets/images/oppo_1.webp',
      'assets/images/oppo_3.webp',
      'assets/images/oppo_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Oppo A17K Navy Blue (3GB/64GB)',
    description: """
  Screen Size: 6.56 inches (16.66 cm)
  Screen Resolution: 1612 x 720 Pixels
  Aspect Ratio: 20:9
  Bezel-Less Display: Yes, with waterdrop notch
""",
    price: 499,
    brand: 'oppo',
    images: [
      'assets/images/oppo_2.webp',
      'assets/images/oppo_3.webp',
      'assets/images/oppo_1.webp',
    ],
  ),

  /// Vivo
  Product(
    id: const Uuid().v1(),
    title: 'Vivo Y17s Glitter Purple (6GB/128GB)',
    description: """
  Dimensions: 163.7 x 75.4 x 8.1 mm (6.44 x 2.97 x 0.32 in)
  Weight: 186 g (6.56 oz)
  Build: Glass front, plastic frame, plastic back
  SIM: Dual SIM (Nano-SIM, dual stand-by)
""",
    price: 799,
    brand: 'vivo',
    images: [
      'assets/images/vivo_3.webp',
      'assets/images/vivo_1.webp',
      'assets/images/vivo_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Vivo V29e 5G Rose Gold (8GB/256GB)',
    description: """
  Dimensions: 163.7 x 75.4 x 8.1 mm (6.44 x 2.97 x 0.32 in)
  Weight: 186 g (6.56 oz)
  Build: Glass front, plastic frame, plastic back
  SIM: Dual SIM (Nano-SIM, dual stand-by)
""",
    price: 350,
    brand: 'vivo',
    images: [
      'assets/images/vivo_1.webp',
      'assets/images/vivo_3.webp',
      'assets/images/vivo_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Vivo Y17s Forest Green (6GB/128GB)',
    description: """
  Dimensions: 163.7 x 75.4 x 8.1 mm (6.44 x 2.97 x 0.32 in)
  Weight: 186 g (6.56 oz)
  Build: Glass front, plastic frame, plastic back
  SIM: Dual SIM (Nano-SIM, dual stand-by)
""",
    price: 445,
    brand: 'vivo',
    images: [
      'assets/images/vivo_2.webp',
      'assets/images/vivo_3.webp',
      'assets/images/vivo_1.webp',
    ],
  ),

  ///mi
  Product(
    id: const Uuid().v1(),
    title: 'Xiaomi Civi 3 5G (12GB/512GB)',
    description: """
  Dimensions: 158.7 x 71.7 x 7.6 mm (6.25 x 2.82 x 0.30 in)
  Weight: 174 g (6.14 oz)
  Build: Glass front (Gorilla Glass 5), glass back, aluminum frame
  SIM: Dual SIM (Nano-SIM, dual stand-by)
""",
    price: 550,
    brand: 'mi',
    images: [
      'assets/images/mi_3.webp',
      'assets/images/mi_1.webp',
      'assets/images/mi_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Xiaomi Civi 1S 5G (8GB/128GB)',
    description: """
  Technology: GSM / CDMA / HSPA / CDMA2000 / LTE / 5G
  Dimensions: 158.3 x 71.5 x 7 mm (6.23 x 2.81 x 0.28 in)
  Weight: 166 g (5.86 oz)
  Build: Glass front (Gorilla Glass 5), glass back, aluminum frame
""",
    price: 400,
    brand: 'mi',
    images: [
      'assets/images/mi_1.webp',
      'assets/images/mi_3.webp',
      'assets/images/mi_2.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Xiaomi RedMi Note 12 Turbo 5G (16GB/256GB) White',
    description: """
  Corning Gorilla Glass
  120 Hz Refresh Rate, 240 Hz Touch Sampling Rate
  Punch Hole Display
  64 MP + 8 MP + 2 MP Triple Rear Camera
""",
    price: 650,
    brand: 'mi',
    images: [
      'assets/images/mi_2.webp',
      'assets/images/mi_3.webp',
      'assets/images/mi_1.webp',
    ],
  ),
];

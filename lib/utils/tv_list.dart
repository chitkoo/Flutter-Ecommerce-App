import 'package:uuid/uuid.dart';

import '../models/models.dart';

final tvList = <Product>[
  ///SAMSUNG
  Product(
    id: const Uuid().v1(),
    title: 'SAMSUNG 32" LED TV UA32N4003AKXXT',
    description: """
    • Screen Size: 32"
    • Resolution: 1,366 x 768
    • Picture Engine: Hyper Real
    • Motion Rate: 60
    • PQI (Picture Quality Index): 200
""",
    price: 999,
    brand: 'SAMSUNG TV',
    images: [
      'assets/images/samsung_tv_1.webp',
      'assets/images/samsung_tv_2.webp',
      'assets/images/samsung_tv_3.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'SAMSUNG 75" UA75AU7000KXMR 4K LED SMART TV',
    description: """
    • Series: 7
    • Screen Size: 75"
    • Resolution: 3,840 x 2,160
    • Picture Engine: Crystal Processor 4K
    • PQI (Picture Quality Index): 2000
    • HDR (High Dynamic Range): HDR
    • HDR 10+: Support
""",
    price: 1099,
    brand: 'SAMSUNG TV',
    images: [
      'assets/images/samsung_tv_2.webp',
      'assets/images/samsung_tv_1.webp',
      'assets/images/samsung_tv_3.webp',
    ],
  ),

  ///SONY
  Product(
    id: const Uuid().v1(),
    title: 'Sony X80L 65-Inch 4K UHD LED TV With Smart Google TV (2023)',
    description: """
    • SCREEN SIZE (INCH, MEASURED DIAGONALLY): 65"(64.5")
    • STAND WIDTH (STANDARD POSITION): Approx. 1219 mm
    • Product Dimensions: 0.8 x 7.7 x 15.8 cm; 209 Grams
    • Batteries: 1 Lithium Ion batteries required. (included)
    • SPEAKER CONFIGURATION: Full Range (Bass Reflex) x 2
""",
    price: 1099,
    brand: 'SONY TV',
    images: [
      'assets/images/sony_tv_1.jpeg',
      'assets/images/sony_tv_2.jpeg',
      'assets/images/sony_tv_3.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Sony Class X77L 75-Inches 4K HDR LED Google TV (2023)',
    description: """
    • Screen Size (inch, measured diagonally): 75"(74.5")
    • Screen Size for WEB(diagonal, cm, integer or 1st decimal): 189 cm
    • Display resolution (H x V, pixels): 3840 x 2160
    • Display Type: LED
    • Audio Power Output: 10W + 10W
""",
    price: 999,
    brand: 'SONY TV',
    images: [
      'assets/images/sony_tv_2.jpeg',
      'assets/images/sony_tv_1.jpeg',
      'assets/images/sony_tv_3.webp',
    ],
  ),

  ///LG
  Product(
    id: const Uuid().v1(),
    title: 'LG 50-Inch 4K UHD Smart TV (50UQ751C0SF)',
    description: """
    • Type: 4K UHD
    • Resolution: 3,840 X 2,160 (UHD)
    • Screen Size: 50”
    • LCD (IPS, VA): Multi
    • Refresh Rate: Refresh Rate 60 Hz
    • Brightness (Set Typ): 360 nit
""",
    price: 599,
    brand: 'LG TV',
    images: [
      'assets/images/lg_tv_1.webp',
      'assets/images/lg_tv_2.webp',
      'assets/images/lg_tv_3.webp',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Oppo A77 Sunset Orange',
    description: """
    • Model: 50NANO75SQA
    • Screen Type: 4K Nano Cell
    • Resolution: 3840 x 2160
    • Wide Color Gamut: Nano Color Pro
    • BLU Type: Direct
    • Screen Size (inch): 50
""",
    price: 899,
    brand: 'LG TV',
    images: [
      'assets/images/lg_tv_2.webp',
      'assets/images/lg_tv_1.webp',
      'assets/images/lg_tv_3.webp',
    ],
  ),

  /// TCL
  Product(
    id: const Uuid().v1(),
    title: 'TCL Full HD LED TV 32-Inch (TCL32D3200)',
    description: """
    • Model: TCL32D3200
    • Product Type: LED FHD DTV
    • TV System: ATV: PAL、NTSC、SECAM; DTV: DVB-C/T/T2
    • AV System: PAL, NTSC
    • Power Supply: AC 100V-240V 50/60Hz
    • Power Consumption (TV On): 50W
    • ECO Energy Efficiency: Yes
""",
    price: 799,
    brand: 'TCL TV',
    images: [
      'assets/images/tcl_tv_1.webp',
      'assets/images/tcl_tv_2.webp',
      'assets/images/tcl_tv_3.jpeg',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Vivo V29e 5G Rose Gold (8GB/256GB)',
    description: """
    • Auto power off: Yes
    • Peak luminance ratio: 65%
    • Analogue tuner systems: PAL/SECAM/NTSC (AV) BG/DK/I/LL'
    • Auto channel search: Yes
    • EPG (DVB EIT/SI): up to 8 days
    • Analogue tuner: Yes
    • DTV Tuner: DVB-T2/C/S2
""",
    price: 350,
    brand: 'TCL TV',
    images: [
      'assets/images/tcl_tv_3.jpeg',
      'assets/images/tcl_tv_1.webp',
      'assets/images/tcl_tv_2.webp',
    ],
  ),

  ///hisense
  Product(
    id: const Uuid().v1(),
    title: 'Hisense 43-Inch Full HD LED TV 43A4G (Digital T2+Smart+Android)',
    description: """
    • Screen Size: 43"
    • Display Type: LCD / LED lit
    • Screen Size (diagonal): 108 cm
    • Resolution: 1920 x 1080
    • Optical digital audio output (SPDIF): Yes
    • AV IN: Yes
    • HDMI: 2
""",
    price: 850,
    brand: 'HISENSE TV',
    images: [
      'assets/images/hisense_tv_1.webp',
      'assets/images/hisense_tv_2.jpeg',
      'assets/images/hisense_tv_3.jpeg',
    ],
  ),
  Product(
    id: const Uuid().v1(),
    title: 'Xiaomi Civi 1S 5G (8GB/128GB)',
    description: """
    • Size : 50 inches
    • Audio: DTX Virtual-X
    • Power Source: 100-240V~ 50/60Hz
    • Power Consumption: 120W
    • Display Technology: LED
    • Supported internet: Google TV
    • Resolution: 4K
""",
    price: 900,
    brand: 'HISENSE TV',
    images: [
      'assets/images/hisense_tv_2.jpeg',
      'assets/images/hisense_tv_1.webp',
      'assets/images/hisense_tv_3.jpeg',
    ],
  ),
];

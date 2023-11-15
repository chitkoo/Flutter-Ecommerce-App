import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../common/screen_wrapper.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shop'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          child: Center(
            child: Container(
              width: 70.w,
              height: 32.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2.w),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(1, 1),
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -30,
                    left: 20,
                    bottom: 30,
                    child: Image.asset(
                      'assets/images/test.jpeg',
                      width: 20.w,
                      height: 30.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 5,
                    child: SizedBox(
                      width: 40.w,
                      // color: Colors.amber,
                      // padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
                          // ),
                          Text('Mens Cotton Jacket'),

                          SizedBox(
                            height: 10,
                          ),
                          Text('\$ 400'),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 3,
                    right: 10,
                    child: SizedBox(
                      // color: Colors.red,
                      width: 40.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('4.5'),
                          const Icon(Icons.star),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_shopping_cart_sharp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

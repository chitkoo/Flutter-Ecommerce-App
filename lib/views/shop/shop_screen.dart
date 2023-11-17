import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../common/screen_wrapper.dart';
import '../../utils/colors.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Explore'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_checkout_rounded))
          ],
        ),
        body: Column(
          children: [
            const Text('Category'),
            SizedBox(
              width: double.infinity,
              height: 20.w,
              child: ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return const Chip(
                    label: Text('Category'),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(width: 5.w),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(2.5.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  mainAxisExtent: 50.w,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.w),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.2),
                          offset: const Offset(1, 1),
                          blurRadius: 1,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/test.jpeg',
                          width: 30.w,
                          height: 30.w,
                          fit: BoxFit.contain,
                        ),
                        const Spacer(),
                        Container(
                          margin: EdgeInsets.only(top: 1.w),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          child: Column(
                            children: [
                              const Text(
                                'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text.rich(
                                    TextSpan(
                                      text: '\$ ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: priceColor,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '400',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_shopping_cart_rounded,
                                      color: primary,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

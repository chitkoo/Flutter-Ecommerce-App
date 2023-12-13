import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShoppingBagPage extends StatelessWidget {
  const ShoppingBagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShoppingBagView();
  }
}

class ShoppingBagView extends StatelessWidget {
  const ShoppingBagView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Shopping Bag'),
          ),
          SliverList.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                key: ValueKey(index),
                width: 95.w,
                height: 30.w,
                margin: EdgeInsets.symmetric(
                  vertical: 2.5.w,
                ),
                decoration: const BoxDecoration(
                    // color: Colors.white,
                    ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 5.w,
                      top: 0,
                      right: 55.w,
                      bottom: 0,
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://i.dummyjson.com/data/products/1/1.jpg',
                      ),
                    ),
                    Positioned(
                      top: 4.w,
                      left: 50.w,
                      child: Text(
                        'iphone 9',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    Positioned(
                      top: 10.w,
                      left: 50.w,
                      child: Text(
                        'USD 900',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Positioned(
                      top: 18.5.w,
                      left: 50.w,
                      child: SizedBox(
                        width: 25.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              radius: 2.w,
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.w),
                                  border: Border.all(
                                    width: 0.5,
                                  ),
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 5.w,
                                ),
                              ),
                            ),
                            Text(
                              '10',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            InkWell(
                              onTap: () {},
                              radius: 2.w,
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.w),
                                  border: Border.all(
                                    width: 0.5,
                                  ),
                                ),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 5.w,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.w,
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.delete,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 28.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total 2 Items'),
                Text(
                  'USD 1234',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 3.w,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 10.w),
                  padding: EdgeInsets.symmetric(horizontal: 10.w)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Proceed to checkout'),
                  Icon(CupertinoIcons.chevron_right_2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShoppingBagPage extends StatelessWidget {
  const ShoppingBagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ShoppingBagView();
  }
}

class _ShoppingBagView extends StatelessWidget {
  const _ShoppingBagView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Bag'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 3.w),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            // color: Colors.grey,
            width: 95.w,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            margin: EdgeInsets.only(bottom: 2.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/iphone_15.webp',
                  width: 30.w,
                  height: 30.w,
                  fit: BoxFit.cover,
                ),
                Container(
                  // color: Colors.amber,
                  width: 65.w,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'SAMSUNG 75" UA75AU7000KXMR 4K LED SMART TV',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Row(
                        children: [
                          const Text('\$ 10999'),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.remove)),
                          const Text('1'),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.remove)),
                        ],
                      ),
                     
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

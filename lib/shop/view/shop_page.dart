import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app/common/common_methods.dart';
import 'package:shopping_app/shopping_bag/shopping_bag.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../widgets/widgets.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'What are you looking for today?',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              buildPageRoute(const ShoppingBagPage()),
            ),
            icon: const Icon(CupertinoIcons.shopping_cart),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const ShopSearchBar(),
            SizedBox(
              height: 2.5.w,
            ),
            Divider(
              color: secondaryDark,
              thickness: 0.1,
              indent: 2.5.w,
              endIndent: 2.5.w,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  TitleSection(
                    headerTitle: 'Popular Categories',
                    onTap: () {},
                  ),
                  const CategoriesList(categories: categories),
                  SizedBox(
                    height: 5.w,
                  ),
                  TitleSection(
                    headerTitle: 'Recommeded for you',
                    onTap: () {},
                  ),
                  const RecommededList(),
                  SizedBox(
                    height: 5.w,
                  ),
                  TitleSection(
                    headerTitle: 'Popular Laptops',
                    onTap: () {},
                  ),
                  const PopularList(),
                  SizedBox(
                    height: 5.w,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

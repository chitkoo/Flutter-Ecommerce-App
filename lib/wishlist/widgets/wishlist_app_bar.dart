
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishlistAppbar extends StatelessWidget {
  const WishlistAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      title: const Text('Wishlist'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.cart),
        ),
        PopupMenuButton(
          surfaceTintColor: Colors.transparent,
          color: Colors.white,
          padding: EdgeInsets.zero,
          onSelected: (value) {},
          itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                value: '/hello',
                child: Text("Clear All"),
              ),
            ];
          },
        )
      ],
    );
  }
}


import 'package:flutter/material.dart';

import '../entities/Shop/shop.dart';

class ShopList extends StatelessWidget {
  const ShopList({
    super.key,
    required this.shopList,
    required this.shopMod,
  });

  final List<Shop> shopList;
  final shopMod;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(shopList[index].name),
            leading: const Icon(Icons.shop_two),
            trailing: Wrap(
              children: [
                Text(shopList[index].id, style: const TextStyle(fontSize: 15)),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Deleted'),
                      ),
                    );
                    shopMod.delete(shopList[index].id);
                  },
                  icon: const Icon(Icons.remove),
                )
              ],
            ),
          );
        },
        itemCount: shopList.length,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_shop/widgets/shop_list.dart';

import '../../repository/shop_repository/model.dart';

class ShowShopView extends ConsumerWidget {
  const ShowShopView({super.key});
  static const routeName = '/shops';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shopList = ref.watch(shopListState);
    final shopListMod = ref.watch(shopListModel);
    return Scaffold(
      appBar: AppBar(title: const Text('Shops')),
      body: Column(
        children: [
          Text('All shops: ${shopList.length}'),
          shopList.isEmpty
              ? const Center(
                  child: Text(
                    'No Shops Found',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              : ShopList(shopList: shopList, shopMod: shopListMod)
        ],
      ),
    );
  }
}

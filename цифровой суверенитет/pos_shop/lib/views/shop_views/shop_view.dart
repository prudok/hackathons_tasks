import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_shop/views/shop_views/show_shop_view.dart';

import '../../entities/Shop/shop.dart';
import '../../repository/shop_repository/model.dart';

class ShopView extends ConsumerStatefulWidget {
  const ShopView({super.key});
  static const routeName = '/add-shop';

  @override
  ConsumerState<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends ConsumerState<ShopView> {
  final TextEditingController _shopNameController = TextEditingController();
  final TextEditingController _shopIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final shopListMod = ref.watch(shopListModel);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 500,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Shop Name',
                ),
                controller: _shopNameController,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Shop Id',
                ),
                controller: _shopIdController,
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.go('/admin');
                    },
                    child: const Text('Main'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.go(ShowShopView.routeName);
                    },
                    child: const Text('Show Shops'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_shopIdController.text == '' ||
                          _shopNameController.text == '') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please fill all fields'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Shop Added!'),
                        ));
                        shopListMod.save(
                          Shop(
                            id: _shopIdController.text,
                            name: _shopNameController.text,
                          ),
                        );
                        _shopIdController.clear();
                        _shopNameController.clear();
                      }
                    },
                    child: const Text('Add New Shop'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

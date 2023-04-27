import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_shop/entities/outlet/outlet.dart';
import 'package:pos_shop/views/outlet_views/show_outlet_view.dart';
import 'package:pos_shop/views/shop_views/show_shop_view.dart';

import '../../repository/outlet_repository/out_model.dart';
import '../../repository/shop_repository/model.dart';

class OutletView extends ConsumerStatefulWidget {
  const OutletView({super.key});
  static const routeName = '/add-outlet';

  @override
  ConsumerState<OutletView> createState() => _ShopViewState();
}

class _ShopViewState extends ConsumerState<OutletView> {
  final TextEditingController outletNameController = TextEditingController();
  final TextEditingController outletShopIdController = TextEditingController();
  final TextEditingController outletIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final outletListMod = ref.watch(outletListModel);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Outlet'),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 500,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Outlet Name',
                ),
                controller: outletNameController,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Outlet Id',
                ),
                controller: outletIdController,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Shop Id',
                ),
                controller: outletShopIdController,
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
                      context.go(ShowOutletView.routeName);
                    },
                    child: const Text('Show Outlets'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (outletShopIdController.text == '' ||
                          outletNameController.text == '') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please fill all fields'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Outlet Added!'),
                        ));
                        //
                        outletListMod.save(
                          Outlet(
                            id: outletIdController.text,
                            name: outletNameController.text,
                            shopId: outletShopIdController.text,
                          ),
                        );
                        outletShopIdController.clear();
                        outletNameController.clear();
                        outletIdController.clear();
                      }
                    },
                    child: const Text('Add New Outlet'),
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

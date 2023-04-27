import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_shop/repository/outlet_repository/out_model.dart';
import 'package:pos_shop/widgets/outlet_list.dart';

class ShowOutletView extends ConsumerWidget {
  const ShowOutletView({super.key});
  static const routeName = '/outlets';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final outletListSt = ref.watch(outletListState);
    final outletListMod = ref.watch(outletListModel);
    return Scaffold(
      appBar: AppBar(title: const Text('Outlets')),
      body: Column(
        children: [
          Text('All Outlets: ${outletListSt.length}'),
          outletListSt.isEmpty
              ? const Center(
                  child: Text(
                    'No Outlets Found',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              : OutLetList(
                  outletList: outletListSt,
                  outletMod: outletListMod,
                ),
        ],
      ),
    );
  }
}

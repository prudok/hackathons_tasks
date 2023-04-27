
import 'package:flutter/material.dart';
import 'package:pos_shop/entities/outlet/outlet.dart';

class OutLetList extends StatelessWidget {
  const OutLetList({
    super.key,
    required this.outletList,
    required this.outletMod,
  });

  final List<Outlet> outletList;
  final outletMod;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(outletList[index].name),
            leading: const Icon(Icons.location_city),
            trailing: Wrap(
              children: [
                Text(outletList[index].id, style: const TextStyle(fontSize: 15)),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Deleted'),
                      ),
                    );
                    outletMod.delete(outletList[index].id);
                  },
                  icon: const Icon(Icons.remove),
                )
              ],
            ),
          );
        },
        itemCount: outletList.length,
      ),
    );
  }
}
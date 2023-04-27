import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_shop/views/agent_views/agent_vew.dart';
import 'package:pos_shop/views/agent_views/show_agent_view.dart';
import 'package:pos_shop/views/outlet_views/outlet_view.dart';
import 'package:pos_shop/views/shop_views/shop_view.dart';

import '../repository/admin_repository.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});
  static const routeName = '/admin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin View'),
      ),
      body: Column(
        children: [
          Text(
            'Login: ${adminRepository.login}',
            style: const TextStyle(
                fontSize: 25, color: Color.fromRGBO(33, 150, 243, 1)),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go('/');
                },
                child: const Text('Exit'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  context.go(ShopView.routeName);
                },
                child: const Text('Shops'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  context.go(OutletView.routeName);
                },
                child: const Text('Outlets'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  context.go(AgentView.routeName);
                },
                child: const Text('Agents'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

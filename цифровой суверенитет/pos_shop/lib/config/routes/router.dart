import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_shop/views/admin_view.dart';
import 'package:pos_shop/views/agent_views/show_agent_view.dart';
import 'package:pos_shop/views/outlet_views/show_outlet_view.dart';
import 'package:pos_shop/views/shop_views/shop_view.dart';

import '../../views/agent_views/agent_vew.dart';
import '../../views/login_view.dart';
import '../../views/outlet_views/outlet_view.dart';
import '../../views/shop_views/show_shop_view.dart';
import '../../views/user_view.dart';

final GoRouter router = GoRouter(
  initialLocation: LoginView.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: LoginView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginView();
      },
    ),
    GoRoute(
      path: AdminView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const AdminView();
      },
    ),
    GoRoute(
      path: ShowShopView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ShowShopView();
      },
    ),
    GoRoute(
      path: ShopView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ShopView();
      },
    ),
    GoRoute(
      path: OutletView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const OutletView();
      },
    ),
    GoRoute(
      path: ShowOutletView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ShowOutletView();
      },
    ),
    GoRoute(
      path: AgentView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const AgentView();
      },
    ),
    GoRoute(
      path: ShowAgentView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ShowAgentView();
      },
    ),
     GoRoute(
      path: '${UserView.routeName}:id',
      builder: (BuildContext context, GoRouterState state) =>
          UserView(userId: state.params['id']),
    ),
  ],
);

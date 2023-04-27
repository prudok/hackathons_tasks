import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/agent_repository/agent_model.dart';

class UserView extends ConsumerWidget {
  static const routeName = '/user';
  final userId;

  const UserView({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agentListSt = ref.watch(agentListState);
    final agent = agentListSt.firstWhereOrNull((agent) => agent.id == userId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Agent Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Agent name: ${agent?.firstName}',
              style: const TextStyle(color: Colors.blue, fontSize: 25),
            ),
            Text(
              'Agent login: ${agent?.login}',
              style: const TextStyle(color: Colors.blue, fontSize: 25),
            ),
            Text(
              'Agent id: ${agent?.id}',
              style: const TextStyle(color: Colors.blue, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}

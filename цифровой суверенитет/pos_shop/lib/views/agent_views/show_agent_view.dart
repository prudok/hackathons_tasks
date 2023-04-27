import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_shop/repository/agent_repository/agent_model.dart';
import 'package:pos_shop/widgets/agent_list.dart';

class ShowAgentView extends ConsumerWidget {
  const ShowAgentView({super.key});
  static const routeName = '/agents';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agentListSt = ref.watch(agentListState);
    final agentListMod = ref.watch(agentListModel);

    return Scaffold(
      appBar: AppBar(title: const Text('Agents')),
      body: Column(
        children: [
          Text('All Agents: ${agentListSt.length}'),
          agentListSt.isEmpty
              ? const Center(
                  child: Text(
                    'No Agents Found',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              : AgentList(
                  agentList: agentListSt,
                  agentMod: agentListMod,
              )
        ],
      ),
    );
  }
}

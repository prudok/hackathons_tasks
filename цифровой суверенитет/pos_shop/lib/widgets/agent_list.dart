
import 'package:flutter/material.dart';
import 'package:pos_shop/entities/agent/agent.dart';

class AgentList extends StatelessWidget {
  const AgentList({
    super.key,
    required this.agentList,
    required this.agentMod,
  });

  final List<Agent> agentList;
  final agentMod;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(agentList[index].firstName),
            leading: const Icon(Icons.supervised_user_circle),
            trailing: Wrap(
              children: [
                Text(agentList[index].id, style: const TextStyle(fontSize: 15)),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Deleted'),
                      ),
                    );
                    agentMod.delete(agentList[index].id);
                  },
                  icon: const Icon(Icons.remove),
                )
              ],
            ),
          );
        },
        itemCount: agentList.length,
      ),
    );
  }
}
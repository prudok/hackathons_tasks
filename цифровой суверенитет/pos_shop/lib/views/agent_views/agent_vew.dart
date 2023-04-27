import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_shop/entities/agent/agent.dart';
import 'package:pos_shop/repository/agent_repository/agent_model.dart';
import 'package:pos_shop/views/agent_views/show_agent_view.dart';

class AgentView extends ConsumerStatefulWidget {
  const AgentView({super.key});
  static const routeName = '/add-agent';

  @override
  ConsumerState<AgentView> createState() => _AgentViewState();
}

class _AgentViewState extends ConsumerState<AgentView> {
  final TextEditingController agentFirstNameController =
      TextEditingController();
  final TextEditingController agentSecondNameController =
      TextEditingController();
  final TextEditingController agentMidNameController = TextEditingController();
  final TextEditingController agentLoginController = TextEditingController();
  final TextEditingController agentPasswordController = TextEditingController();
  final TextEditingController agentIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final agentListMod = ref.watch(agentListModel);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agent'),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 500,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Agent First Name',
                ),
                controller: agentFirstNameController,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Agent Second Name',
                ),
                controller: agentSecondNameController,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Agent Mid Name',
                ),
                controller: agentMidNameController,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Agent Login',
                ),
                controller: agentLoginController,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Agent Password',
                ),
                controller: agentPasswordController,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Agent Id',
                ),
                controller: agentIdController,
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
                      context.go(ShowAgentView.routeName);
                    },
                    child: const Text('Show Agents'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (agentFirstNameController.text == '' ||
                          agentSecondNameController.text == '' ||
                          agentMidNameController.text == '' ||
                          agentLoginController.text == '' ||
                          agentPasswordController.text == '' ||
                          agentIdController.text == '') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please fill all fields'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Agent Added!'),
                        ));
                        //
                        agentListMod.save(
                          Agent(
                            firstName: agentFirstNameController.text,
                            lastName: agentSecondNameController.text,
                            midName: agentMidNameController.text,
                            login: agentLoginController.text,
                            password: agentPasswordController.text,
                            id: agentIdController.text,
                          ),
                        );
                        agentFirstNameController.clear();
                        agentSecondNameController.clear();
                        agentMidNameController.clear();
                        agentLoginController.clear();
                        agentPasswordController.clear();
                        agentIdController.clear();
                      }
                    },
                    child: const Text('Add New Agent'),
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

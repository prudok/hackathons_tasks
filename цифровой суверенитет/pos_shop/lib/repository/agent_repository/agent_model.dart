import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../entities/agent/agent.dart';
import 'agent_repository.dart';

final agentRepository = Provider((ref) => AgentRepository());

class AgentsStateNotifier extends StateNotifier<List<Agent>> {
  AgentsStateNotifier(this.ref) : super([]) {
    loadagents();
  }

  final Ref ref;
  late final getAgents = ref.read(agentRepository);

  void loadagents() {
    state = getAgents.getAgents();
  }

  void save(Agent agent) {
    ref.read(agentRepository).addAgent(agent);
    loadagents();
  }

  Agent get(String id) {
    return ref.read(agentRepository).getAgent(id);
  }

  void delete(String id) {
    ref.read(agentRepository).deleteAgent(id);
    loadagents();
  }
}

final agentListState =
    StateNotifierProvider<AgentsStateNotifier, List<Agent>>((ref) {
  return AgentsStateNotifier(ref);
});

final agentListModel = Provider<AgentsStateNotifier>((ref) {
  return ref.watch(agentListState.notifier);
});

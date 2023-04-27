import '../../entities/agent/agent.dart';

class AgentRepository {
  List<Agent> agents = [];
  void addAgent(Agent agent) {
    agents.add(agent);
  }

  void deleteAgent(String id) {
    agents.removeWhere((element) => element.id == id);
  }

  void updateAgent(Agent agent) {
    //implement
  }

  Agent getAgent(String id) {
    return agents.firstWhere((element) => element.id == id); 
  }

  List<Agent> getAgents() {
    return agents;
  }
}

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_shop/repository/admin_repository.dart';
import 'package:pos_shop/repository/agent_repository/agent_model.dart';
import 'package:pos_shop/views/admin_view.dart';
import 'package:pos_shop/views/user_view.dart';
import 'package:pos_shop/widgets/agent_list.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});
  static const routeName = '/';

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //Implement
  @override
  Widget build(BuildContext context) {
    final agentListSt = ref.watch(agentListState);
    final agentListMod = ref.watch(agentListModel);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: TextField(
                  controller: _loginController,
                  decoration: const InputDecoration(
                    labelText: 'Login',
                  )),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_loginController.text == '' ||
                    _passwordController.text == '') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please Fill The Form Above'),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 1),
                    ),
                  );
                } else if (_loginController.text == adminRepository.login &&
                    _passwordController.text == adminRepository.password) {
                  context.go(AdminView.routeName);
                } else if (agentListSt.firstWhereOrNull((agent) =>
                        agent.login == _loginController.text &&
                        agent.password == _passwordController.text) !=
                    null) {
                  context.go(
                      '${UserView.routeName}${agentListSt.firstWhereOrNull((agent) => agent.login == _loginController.text)!.id}');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Incorrect Password Or Login'),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 1),
                    ),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

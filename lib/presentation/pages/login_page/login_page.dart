import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/usecases/login/login_params.dart';
import '../../providers/usecases/login/login_provider.dart';
import '../main_page/main_page.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final login = ref.watch(loginProvider);

            login
                .call(
                  LoginParams(
                    email: 'mkurniafebrianto@gmail.com',
                    password: 'wow234',
                  ),
                )
                .then((result) {
                  if (!context.mounted) return;

                  if (result.isSuccess) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            MainPage(user: result.resultValue!),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(result.errorMessage!)),
                    );
                  }
                });
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}

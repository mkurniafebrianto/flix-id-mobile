import 'package:flutter/material.dart';

import '../../../data/firebase/firebase_authentication.dart';
import '../../../data/firebase/firebase_user_repository.dart';
import '../../../domain/usecases/login/login.dart';
import '../../../domain/usecases/login/login_params.dart';
import '../main_page/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final login = Login(
              authentication: FirebaseAuthentication(),
              userRepository: FirebaseUserRepository(),
            );

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

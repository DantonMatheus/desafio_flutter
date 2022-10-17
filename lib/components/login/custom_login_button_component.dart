import 'package:desafio_001/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({Key? key, required this.loginController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
                valueListenable: loginController.inLoader,
                builder: (_, inLoader, __) => inLoader 
                ? CircularProgressIndicator() 
                : ElevatedButton(
                    onPressed: () {
                      loginController.auth().then((result) {
                        if (result) {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: const Text('Falha no login'),
                            duration: const Duration(seconds: 3),
                            )
                          );
                        }
                      });
                    },
                    child: Text('Login'),
                  ),
              );
  }
}
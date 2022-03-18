import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/auth/auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () => context.read<AuthBloc>().add(LoginEvent()),
        child: const Text("LOGIN"),
      )),
    );
  }
}

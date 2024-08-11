import 'package:aux/components/components.dart';
import 'package:aux/providers/login_form_provider.dart';
import 'package:aux/widgets/login/CardContainer.dart';
import 'package:aux/widgets/widgets.dart';
import 'package:aux/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SideBar(),
        appBar: AppBar(
          title: const Text('REGISTRATE'),
        ),
        body: AuthBackground(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 250),
              CardContainer(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text('Inicia tu cuenta',
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 20),
                    ChangeNotifierProvider(
                        create: (_) => loginfromprovider(), child: _LoginForm())
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<loginfromprovider>(context);

    return Form(
      key: loginForm.formkey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(),
          const SizedBox(height: 30),
          TextFormField()
        ],
      ),
    );
  }
}

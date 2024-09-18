import 'package:flutter/material.dart';
import 'package:revex/common/shadows.dart';
import 'package:revex/common/validator_message.dart';
import 'package:revex/common/widgets/company_logo.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/sign_up.jpg"),
          ),
        ),
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).padding.top + 20,
                  ),
                  const Companylogo(),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: CommonShadown.textFieldShadow,
                    ),
                    margin: const EdgeInsets.only(bottom: 20, top: 20),
                    child: TextFormField(
                      decoration:
                          const InputDecoration().copyWith(labelText: "Name"),
                      validator: (value) =>
                          ValidatorMessage.type1("name", value),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: CommonShadown.textFieldShadow,
                    ),
                    margin: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      decoration:
                          const InputDecoration().copyWith(labelText: "Email"),
                      validator: (value) =>
                          ValidatorMessage.type1("email", value),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: CommonShadown.textFieldShadow,
                    ),
                    margin: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      decoration: const InputDecoration()
                          .copyWith(labelText: "Password"),
                      validator: (value) =>
                          ValidatorMessage.type1("password", value),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: CommonShadown.textFieldShadow,
                    ),
                    margin: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: "Retype Password"),
                      validator: (value) =>
                          ValidatorMessage.type1("password", value),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: _onRegister,
                      child: const Text("Signup"),
                    ),
                  ),
                  TextButton(
                      onPressed: _onSignInTapped,
                      child: const Text(
                        "I already have an account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                offset: Offset(0, 4),
                                blurRadius: 4),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onRegister() {}

  void _onSignInTapped() {
    Navigator.pushNamed(context, '/signin');
  }
}

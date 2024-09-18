import 'package:flutter/material.dart';
import 'package:revex/common/shadows.dart';
import 'package:revex/common/validator_message.dart';
import 'package:revex/common/widgets/company_logo.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            image: AssetImage("assets/sign_in.jpg"),
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
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: _onSignIn,
                      child: const Text("Login"),
                    ),
                  ),
                  TextButton(
                      onPressed: _onRegisterTapped,
                      child: const Text(
                        "No account yet?",
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

  void _onSignIn() {
    if (formKey.currentState!.validate()) {
      print("Signin");
    }
  }

  void _onRegisterTapped() {
    Navigator.pushNamed(context, '/signup');
  }
}

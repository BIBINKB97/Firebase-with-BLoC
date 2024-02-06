import 'package:firebase_bloc/application/feature/auth/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Text("Login with Email"),
            CustomTextFormField(
              controller: emailController,
              hintText: "Enter Email",
            ),
            CustomTextFormField(
              obscureText: true,
              controller: passwordController,
              hintText: "Enter Password",
            ),
            TextButton(onPressed: () {

              
            }, child: Text('Login')),

              TextButton(onPressed: () {
                Navigator.pushNamed(context,'/register') ;
              }, child: Text("register"))
          ],
        ),
      ),
    );
  }
}

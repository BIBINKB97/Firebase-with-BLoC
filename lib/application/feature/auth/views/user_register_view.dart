import 'package:firebase_bloc/application/feature/auth/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Text("Register with Email"),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: "Enter Email",
                    ),
                    CustomTextFormField(
                      obscureText: true,
                      controller: passwordController,
                      hintText: "Enter Password",
                    ),
                    CustomTextFormField(
                      obscureText: true,
                      controller: nameController,
                      hintText: "Enter Name",
                    ),
                    CustomTextFormField(
                      obscureText: true,
                      controller: phoneController,
                      hintText: "Enter Phone",
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('already have an account ?')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Login"))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

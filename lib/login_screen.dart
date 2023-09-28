import 'package:flutter/material.dart';
import 'package:loginui/widgets/grident_button.dart';
import 'package:loginui/widgets/login_field.dart';
import 'package:loginui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Image.asset('assets/images/signin_balls.png'),
                const Text(
                  'Sign in.',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                const SocialButton(
                  iconPath: 'assets/svgs/f_logo.svg',
                  labelText: 'Facebook',
                  horizontalPadding: 90,
                ),
                const SizedBox(height: 20),
                const SocialButton(
                  iconPath: 'assets/svgs/g_logo.svg',
                  labelText: 'Google',
                ),
                const SizedBox(height: 15),
                const Text(
                  'or',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 15),
                const LoginField(
                  hintText: 'Email',
                ),
                const SizedBox(height: 15),
                const LoginField(
                  hintText: 'Passoword',
                ),
                const SizedBox(
                  height: 20,
                ),
                const GradientButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

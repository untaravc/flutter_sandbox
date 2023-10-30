import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/basic_button.dart';
import 'package:flutter_application_1/components/basic_textfield.dart';
import 'package:flutter_application_1/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 50,
            ),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            Text("Welcome back, you've been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                )),
            const SizedBox(
              height: 25,
            ),
            BasicTextField(
              controller: usernameController,
              hintText: "Username",
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            BasicTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text("Forgot Password?",
                    style: TextStyle(color: Colors.grey[600]))
              ]),
            ),
            const SizedBox(
              height: 25,
            ),
            BasicButton(onTab: signUserIn),
            // sign in button
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or continue with"),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'lib/images/google-logo.png'),
                SizedBox(
                  width: 10,
                ),
                SquareTile(imagePath: 'lib/images/google-logo.png')
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?"),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Register now',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            )

            // ggole sign in buttons

            // not a member? register now
          ]),
        ),
      ),
    );
  }
}

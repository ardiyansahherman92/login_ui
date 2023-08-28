import 'package:flutter/material.dart';
import 'package:login_ui/components/buton.dart';
import 'package:login_ui/components/images.dart';
import 'package:login_ui/components/textfield.dart';

class LoginPage extends StatelessWidget {
  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const hightLimaPuluh = SizedBox(height: 50);
    const hightDuaLima = SizedBox(height: 25);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              hightLimaPuluh,
              //logo

              const Icon(
                Icons.lock,
                size: 100,
              ),

              hightLimaPuluh,

              //welcome back, you've been missed!
              Text(
                "Welcome back you/'ve been missed",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              hightDuaLima,

              //username textfield
              TextfieldWidgets(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              hightDuaLima,
              //password textfield
              TextfieldWidgets(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              //forgot password?
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              hightDuaLima,
              //sign in button
              const ButtonWidggets(),

              hightDuaLima,
              //or continue with
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
              hightDuaLima,
              //google + apple sign in buttons
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    ImageWidgets(imagePath: 'images/google.png'),
                    SizedBox(width: 10),
                    //apple button
                    ImageWidgets(imagePath: 'images/apple.png')
                  ],
                ),
              ),

              //not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}

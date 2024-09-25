import 'package:flutter/material.dart';
import 'package:myapp/components/my_textfield.dart';
import 'package:myapp/components/mybutton.dart';
import 'package:myapp/pages/external_page.dart';
import 'package:myapp/pages/home_page.dart';

class Login extends StatefulWidget {
  final void Function()? onTap;

  const Login({super.key, required this.onTap});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  void login() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          171, 5, 5, 5), // Set the background color for contrast
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Section
              Center(
                child: ClipOval(
                  child: Image.asset(
                    'images/logodelapp (1).png', // Simplified the path
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Welcome Text
              const Text(
                "Welcome Back, ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                "It's Good To See You Again ",
                style: TextStyle(
                  fontSize: 20, // Reduced font size slightly for balance
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 25),

              // Email Text Field
              MyTextfield(
                hintText: "Enter Your Email",
                controller: emailcontroller,
                obscureText: false,
              ),

              const SizedBox(height: 20),

              // Password Text Field
              MyTextfield(
                hintText: "Enter Your Password",
                controller: passwordcontroller,
                obscureText: true, // Password should be obscured
              ),

              const SizedBox(height: 20),

              // Sign-in Button
              MyButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExternalPage()));
                  },
                  text: 'Sign in'),

              const SizedBox(height: 20),

              // Register Option
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center-align the row contents
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget
                        .onTap, // Call the togglePages function passed in from Start widget
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

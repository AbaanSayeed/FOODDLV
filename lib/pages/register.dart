import 'package:flutter/material.dart';
import 'package:myapp/components/my_textfield.dart';
import 'package:myapp/components/mybutton.dart';

class Register extends StatefulWidget {
  final void Function()? onTap;

  const Register({super.key, required this.onTap});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();

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
                "Hello There, ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Let's create an account",
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

              // Confirm Password Text Field
              MyTextfield(
                hintText: "Confirm Your Password",
                controller: confirmpasswordcontroller,
                obscureText: true, // Password should be obscured
              ),

              const SizedBox(height: 20),

              // Register Button
              MyButton(onTap: () {}, text: 'Register'),

              const SizedBox(height: 20),

              // Sign In Link
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center-align the row contents
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget
                        .onTap, // Call the togglePages function passed in from Start widget
                    child: const Text(
                      "Sign In",
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

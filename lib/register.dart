import 'package:flutter/material.dart';
import 'package:my_test/components/button.dart';
import 'package:my_test/components/textInput.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  void registerUser() {
    if (fullNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please fill all the fields',
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
    } else if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Passwords do not match',
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
    } else {
      print(fullNameController.text);
      print(emailController.text);
      print(passwordController.text);
      print(confirmPasswordController.text);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }
  }

  void navigateToLogin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                Image.asset('lib/Images/logo.png', height: 100),
                const SizedBox(height: 10),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Create your account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
                TextInput(
                  controller: fullNameController,
                  hintText: "Full Name",
                  obscureText: false,
                  iconNames: Icons.account_circle,
                ),
                const SizedBox(height: 10),
                TextInput(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                  iconNames: Icons.email,
                ),
                const SizedBox(height: 10),
                TextInput(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                  iconNames: Icons.lock,
                ),
                const SizedBox(height: 10),
                TextInput(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                  iconNames: Icons.lock,
                ),
                const SizedBox(height: 25),
                GestureDetector(
                    onTap: registerUser, child: const Button(name: "Sign Up")),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      const Text(
                        'Or continue with',
                        style: TextStyle(color: Color.fromRGBO(97, 97, 97, 1)),
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
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70),
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Image.asset(
                        'lib/Images/google.png',
                        height: 25,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70),
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Image.asset(
                        'lib/Images/apples.png',
                        height: 35,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'you do have an account?',
                      style: TextStyle(
                        color: Color.fromRGBO(97, 97, 97, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: navigateToLogin,
                      child: const Text(
                        'Login Now',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

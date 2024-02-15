import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/main_functions.dart/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showCPI = false;
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    style: const TextStyle(
                        color: Colors.white70), // Set text color to white
                    cursorColor: Colors.white70, // Set cursor color to white
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      hintStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14), // Set hint text color to white
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.white70,
                        size: 18,
                      ), // Set search icon color to white
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.white70), // Set border color to white
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors
                                .white), // Set enabled border color to white
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                        controller: passwordController,
                        obscureText: !showPass,
                        style: const TextStyle(
                            color: Colors.white70), // Set text color to white
                        cursorColor:
                            Colors.white70, // Set cursor color to white
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14), // Set hint text color to white
                          prefixIcon: const Icon(
                            Icons.password,
                            color: Colors.white70,
                            size: 18,
                          ), // Set search icon color to white
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors
                                    .white70), // Set border color to white
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors
                                    .white), // Set enabled border color to white
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              showPass = !showPass;
                            });
                          },
                          icon: Icon(showPass
                              ? Icons.visibility
                              : Icons.visibility_off))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor: MaterialStatePropertyAll(
                            Colors.black,
                          )),
                      onPressed: () async {
                        setState(() {
                          showCPI = true;
                        });
                        Future.delayed(const Duration(seconds: 3), () async {
                          try {
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                            )
                                .then((value) async {
                              try {
                                await FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwordController.text)
                                    .then((value) {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()));
                                  setState(() {
                                    showCPI = false;
                                  });
                                });
                              } on FirebaseException catch (e) {
                                setState(() {
                                  showCPI = false;
                                });
                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(e.message.toString())));
                              }
                            });
                            setState(() {
                              showCPI = false;
                            });
                          } on FirebaseAuthException catch (signUpError) {
                            if (signUpError.code == 'email-already-in-use') {
                              try {
                                await FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwordController.text)
                                    .then((value) {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Successfully logged in!')));
                                });
                              } on FirebaseException catch (e) {
                                setState(() {
                                  showCPI = false;
                                });
                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(e.message.toString())));
                              }
                            } else {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Error')));
                            }
                            setState(() {
                              showCPI = false;
                            });
                          }
                        });
                      },
                      child: const Text('Submit')),
                )
              ],
            ),
          ),
          if (showCPI)
            Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
                child: const Center(child: CircularProgressIndicator()))
        ],
      ),
    );
  }
}

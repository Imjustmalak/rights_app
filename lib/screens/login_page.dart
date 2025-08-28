import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../api_config.dart';
import 'home_page.dart';
import 'register_page.dart';
import 'reset_password_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  Future<void> loginUser() async {
<<<<<<< HEAD
    final url = Uri.parse('$baseUrl/login');// backend call
=======
    final url = Uri.parse('${ApiConfig.baseUrl}/auth/login');
    // backend call
>>>>>>> be622d1 (Updated project)

    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.post(
        url,
<<<<<<< HEAD
        headers: {'Content-Type': 'application/json'},//http post request to confirm email, address
=======
        headers: {
          'Content-Type': 'application/json',
        }, //http post request to confirm email, address
>>>>>>> be622d1 (Updated project)
        body: json.encode({
          "email": emailController.text,
          "password": passwordController.text,
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['success'] == true) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => HomePage()),
          );
        } else {
          showError(data['message'] ?? 'Invalid credentials');
        }
      } else {
        showError('Server error');
      }
    } catch (e) {
      showError('Network error');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void showError(String msg) {
<<<<<<< HEAD
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: Colors.red,
      ),
    );
=======
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red));
>>>>>>> be622d1 (Updated project)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.black,
=======
      backgroundColor: Color(0xFFFAF5F5),
      appBar: AppBar(
        title: const Text("تسجيل الدخول"),
        backgroundColor: Colors.brown,
>>>>>>> be622d1 (Updated project)
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
<<<<<<< HEAD
                const Icon(Icons.lock, size: 80, color: Colors.orange),
=======
                const Icon(
                  Icons.login_rounded,
                  size: 100,
                  color: Colors.redAccent,
                ),
>>>>>>> be622d1 (Updated project)
                const SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
<<<<<<< HEAD
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email, color: Colors.orange),
=======
                    labelText: "بريد إلكتروني",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email, color: Colors.white),
>>>>>>> be622d1 (Updated project)
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
<<<<<<< HEAD
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock, color: Colors.orange),
=======
                    labelText: "كلمة المرور",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
>>>>>>> be622d1 (Updated project)
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white24),
                    ),
                    focusedBorder: OutlineInputBorder(
<<<<<<< HEAD
                      borderSide: BorderSide(color: Colors.orange),
=======
                      borderSide: BorderSide(color: Colors.redAccent),
>>>>>>> be622d1 (Updated project)
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ResetPasswordPage()),
                      );
                    },
                    child: const Text(
<<<<<<< HEAD
                      'Forgot Password?',
                      style: TextStyle(color: Colors.orange),
=======
                      'هل نسيت كلمة السر؟',
                      style: TextStyle(color: Colors.black),
>>>>>>> be622d1 (Updated project)
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                isLoading
<<<<<<< HEAD
                    ? const CircularProgressIndicator(color: Colors.orange)
                    : SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: loginUser,
                    child: const Text("Login"),
                  ),
                ),
=======
                    ? const CircularProgressIndicator(color: Colors.redAccent)
                    : SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: loginUser,
                          child: const Text("تسجيل الدخول"),
                        ),
                      ),
>>>>>>> be622d1 (Updated project)
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
<<<<<<< HEAD
                    const Text("Don't have an account?",
                        style: TextStyle(color: Colors.white70)),
=======
                    const Text(
                      "ليس لديك حساب؟",
                      style: TextStyle(color: Colors.white70),
                    ),
>>>>>>> be622d1 (Updated project)
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => RegisterPage()),
                        );
                      },
                      child: const Text(
<<<<<<< HEAD
                        "Register",
                        style: TextStyle(color: Colors.orange),
=======
                        "تسجيل",
                        style: TextStyle(color: Colors.black),
>>>>>>> be622d1 (Updated project)
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

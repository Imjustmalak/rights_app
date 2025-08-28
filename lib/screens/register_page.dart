import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../api_config.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isLoading = false;

  // Email Validation Function
  bool _isValidEmail(String email) {
    return RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email);
  }

  // Show Error Message
  void showError(String msg) {
<<<<<<< HEAD
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: Colors.red),
    );
=======
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red));
>>>>>>> be622d1 (Updated project)
  }

  // Registration Logic
  Future<void> registerUser() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

<<<<<<< HEAD
    // Validate email
=======
>>>>>>> be622d1 (Updated project)
    if (!_isValidEmail(email)) {
      showError('Please enter a valid email');
      return;
    }

<<<<<<< HEAD
    // Validate password length
=======
>>>>>>> be622d1 (Updated project)
    if (password.length < 6) {
      showError('Password must be at least 6 characters');
      return;
    }

<<<<<<< HEAD
    // Check passwords match
=======
>>>>>>> be622d1 (Updated project)
    if (password != confirmPassword) {
      showError('Passwords do not match');
      return;
    }

<<<<<<< HEAD
    // If all validations pass → Send to backend
    final url = Uri.parse('$baseUrl/register');
=======
    final url = Uri.parse('${ApiConfig.baseUrl}/auth/register');
>>>>>>> be622d1 (Updated project)
    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
<<<<<<< HEAD
        body: json.encode({
          "email": email,
          "password": password,
        }),
      );

      final data = json.decode(response.body);
      if (response.statusCode == 200 && data['success'] == true) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registration successful!'), backgroundColor: Colors.green),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const LoginPage()),
        );
      } else {
        showError(data['message'] ?? 'Registration failed');
=======
        body: json.encode({"email": email, "password": password}),
      );

      final data = json.decode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (data['success'] == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Registration successful!'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const LoginPage()),
          );
        } else {
          showError(data['message'] ?? 'Registration failed');
        }
      } else {
        showError('Server error: ${response.statusCode}');
>>>>>>> be622d1 (Updated project)
      }
    } catch (e) {
      showError('Network error');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: Color(0xFF121212),
=======
      backgroundColor: const Color(0xFF121212),
>>>>>>> be622d1 (Updated project)
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
<<<<<<< HEAD
                const Icon(Icons.person_add, size: 80, color: Colors.orange),
                const SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email, color: Colors.orange),
=======
                const Icon(Icons.person_add, size: 80, color: Colors.redAccent),
                const SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email, color: Colors.redAccent),
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
                const SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: true,
<<<<<<< HEAD
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock, color: Colors.orange),
=======
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock, color: Colors.redAccent),
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
                const SizedBox(height: 20),
                TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
<<<<<<< HEAD
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.orange),
=======
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.redAccent,
                    ),
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
                const SizedBox(height: 20),
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
                    onPressed: registerUser,
                    child: const Text("Register"),
                  ),
                ),
=======
                    ? const CircularProgressIndicator(color: Colors.redAccent)
                    : SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: registerUser,
                          child: const Text("Register"),
                        ),
                      ),
>>>>>>> be622d1 (Updated project)
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
<<<<<<< HEAD
                    const Text("Already have an account?", style: TextStyle(color: Colors.white70)),
=======
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.white70),
                    ),
>>>>>>> be622d1 (Updated project)
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const LoginPage()),
                        );
                      },
<<<<<<< HEAD
                      child: const Text("Login", style: TextStyle(color: Colors.orange)),
=======
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.redAccent),
                      ),
>>>>>>> be622d1 (Updated project)
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

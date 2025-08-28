import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
<<<<<<< HEAD

import '../api_config.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final emailController = TextEditingController();
  bool isLoading = false;

  Future<void> resetPassword() async {
    final url = Uri.parse('$baseUrl/reset-password');

    setState(() {
      isLoading = true;
    });
=======
import '../api_config.dart';

class RequestResetPage extends StatefulWidget {
  const RequestResetPage({super.key});

  @override
  State<RequestResetPage> createState() => _RequestResetPageState();
}

class _RequestResetPageState extends State<RequestResetPage> {
  final emailController = TextEditingController();
  bool isLoading = false;

  void showMessage(String msg, {Color color = Colors.red}) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg), backgroundColor: color));
  }

  Future<void> requestReset() async {
    final url = Uri.parse('${ApiConfig.baseUrl}/auth/request-password-reset');

    if (emailController.text.trim().isEmpty) {
      showMessage("الرجاء إدخال البريد الإلكتروني");
      return;
    }

    setState(() => isLoading = true);
>>>>>>> be622d1 (Updated project)

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
<<<<<<< HEAD
        body: json.encode({"email": emailController.text}),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['success'] == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Reset link sent to your email.')),
          );
          Navigator.pop(context);
        } else {
          showError(data['message'] ?? 'Email not found.');
        }
      } else {
        showError('Server error. Try again later.');
      }
    } catch (e) {
      showError('Network error. Check your connection.');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reset Password")),
=======
        body: json.encode({"email": emailController.text.trim()}),
      );

      final data = json.decode(response.body);
      if (response.statusCode == 200 && data['success'] == true) {
        showMessage(
          "تم إرسال رابط إعادة التعيين إلى بريدك الإلكتروني",
          color: Colors.green,
        );
        Navigator.pop(context);
      } else {
        showMessage(data['message'] ?? "البريد الإلكتروني غير موجود");
      }
    } catch (e) {
      showMessage("خطأ في الشبكة");
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text("طلب إعادة تعيين كلمة المرور"),
        backgroundColor: Colors.black,
      ),
>>>>>>> be622d1 (Updated project)
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
<<<<<<< HEAD
            const Icon(Icons.lock_reset, size: 80, color: Colors.green),
            const SizedBox(height: 20),
            const Text(
              "Enter your email to receive reset instructions.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),
=======
            const Icon(Icons.email, size: 80, color: Colors.redAccent),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: "البريد الإلكتروني",
                labelStyle: TextStyle(color: Colors.white70),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined, color: Colors.redAccent),
>>>>>>> be622d1 (Updated project)
              ),
            ),
            const SizedBox(height: 20),
            isLoading
<<<<<<< HEAD
                ? const CircularProgressIndicator()
                : SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: resetPassword,
                child: const Text("Send Reset Link"),
              ),
            ),
=======
                ? const CircularProgressIndicator(color: Colors.redAccent)
                : SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: requestReset,
                      child: const Text("إرسال رابط إعادة التعيين"),
                    ),
                  ),
>>>>>>> be622d1 (Updated project)
          ],
        ),
      ),
    );
  }
}

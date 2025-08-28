import 'package:flutter/material.dart';

import 'login_page.dart';
import 'register_page.dart';
import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: Color(0xFF121212),
=======
      backgroundColor: const Color(0xFFFDFDFD),
>>>>>>> be622d1 (Updated project)
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
<<<<<<< HEAD
                Icon(Icons.gavel, size: 100, color: Colors.orange),
                SizedBox(height: 24),
                Text(
                  'Welcome to my RightsApp',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: Size(double.infinity, 48),
=======
                const SizedBox(height: 24),

                Icon(Icons.balance, size: 100, color: Colors.brown[800]),
                const SizedBox(height: 24),

                const Text(
                  'مرحباً بك في تطبيق حقوقك دليلك المبسط لفهم القوانين والحقوق الجزائرية',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    minimumSize: const Size(double.infinity, 48),
>>>>>>> be622d1 (Updated project)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
<<<<<<< HEAD
                  child: Text('Login'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  RegisterPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: Size(double.infinity, 48),
=======
                  child: const Text(
                    'تسجيل الدخول',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    minimumSize: const Size(double.infinity, 48),
>>>>>>> be622d1 (Updated project)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
<<<<<<< HEAD
                  child: Text('Register'),
                ),
                SizedBox(height: 16),
=======
                  child: const Text(
                    'تسجيل',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),

>>>>>>> be622d1 (Updated project)
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
<<<<<<< HEAD
                    side: BorderSide(color: Colors.orange),
                    foregroundColor: Colors.orange,
                    minimumSize: Size(double.infinity, 48),
=======
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.redAccent,
                    minimumSize: const Size(double.infinity, 48),
>>>>>>> be622d1 (Updated project)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
<<<<<<< HEAD
                  child: Text('Continue as Guest'),
=======
                  child: const Text(
                    'زيارة كضيف',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
>>>>>>> be622d1 (Updated project)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'login_page.dart';
import 'profile_page.dart';
import 'chatbot_page.dart';
import 'books_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

<<<<<<< HEAD
  final List<Widget> _pages = [
    LawSectionPage(),
    ProfilePage(),
    ChatbotPage(),
  ];
=======
  final List<Widget> _pages = [LawSectionPage(), ProfilePage(), ChatbotPage()];
>>>>>>> be622d1 (Updated project)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text('RightsApp'),
=======
        title: Text('تطبيق حقوقك'),
>>>>>>> be622d1 (Updated project)
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
<<<<<<< HEAD
            tooltip: 'Logout',
          )
=======
            tooltip: 'تسجيل الخروج',
          ),
>>>>>>> be622d1 (Updated project)
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
<<<<<<< HEAD
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chatbot'),
=======
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الصفحة الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'صفحة الملف الشخصي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'مساعدك القانوني',
          ),
>>>>>>> be622d1 (Updated project)
        ],
      ),
      backgroundColor: Colors.black87,
    );
  }
}

class LawSectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      color: Colors.black87,
=======
      color: Colors.white,
>>>>>>> be622d1 (Updated project)
      child: GridView.count(
        padding: EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
<<<<<<< HEAD
          buildCard(context, 'Civil Law', Icons.gavel),
          buildCard(context, 'Family Law', Icons.family_restroom),
          buildCard(context, 'Financial Law', Icons.attach_money),
          buildCard(context, 'Criminal Law', Icons.security),
=======
          buildCard(context, 'القانون المدني', Icons.gavel),
          buildCard(context, 'قانون الأسرة', Icons.family_restroom),
          buildCard(context, 'القانون المالي', Icons.attach_money),
          buildCard(context, 'القانون الجنائي', Icons.security),
>>>>>>> be622d1 (Updated project)
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context, String title, IconData icon) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
<<<<<<< HEAD
      color: Colors.grey[900],
=======
      color: Colors.brown[500],
>>>>>>> be622d1 (Updated project)
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
<<<<<<< HEAD
            MaterialPageRoute(
              builder: (_) => BooksPage(category: title),
            ),
=======
            MaterialPageRoute(builder: (_) => BooksPage(category: title)),
>>>>>>> be622d1 (Updated project)
          );
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
<<<<<<< HEAD
              Icon(icon, size: 48, color: Colors.orange),
              SizedBox(height: 8),
              Text(title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16)),
=======
              Icon(icon, size: 48, color: Colors.red),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
>>>>>>> be622d1 (Updated project)
            ],
          ),
        ),
      ),
    );
  }
}

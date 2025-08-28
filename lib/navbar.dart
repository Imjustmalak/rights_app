import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/chatbot_screen.dart';

class AppNavbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  AppNavbar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
        }, child: Text('Home', style: TextStyle(color: Colors.white))),
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen()));
        }, child: Text('Profile', style: TextStyle(color: Colors.white))),
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => ChatbotScreen()));
        }, child: Text('Chatbot', style: TextStyle(color: Colors.white))),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

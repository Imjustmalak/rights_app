import 'package:flutter/material.dart';

class LawCategoryCard extends StatelessWidget {
  final Map<String, dynamic> law;

  LawCategoryCard(this.law);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(law['icon'], color: Colors.green),
        title: Text(law['title'], style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(law['desc']),
        onTap: () {
          // TODO: Navigate to detail page
        },
      ),
    );
  }
}

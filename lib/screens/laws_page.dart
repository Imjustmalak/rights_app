import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../api_config.dart';

class LawsPage extends StatefulWidget {
  final int bookId;
  final String bookName;

  const LawsPage({super.key, required this.bookId, required this.bookName});

  @override
  State<LawsPage> createState() => _LawsPageState();
}

class _LawsPageState extends State<LawsPage> {
  List<dynamic> laws = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchLaws();
  }

  Future<void> fetchLaws() async {
    try {
      final url = Uri.parse('$baseUrl/laws/${widget.bookId}');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        setState(() {
          laws = json.decode(response.body);
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
        });
        print('Failed to load laws: ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching laws: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Laws in ${widget.bookName}')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : laws.isEmpty
          ? const Center(child: Text('No laws found'))
          : ListView.builder(
        itemCount: laws.length,
        itemBuilder: (context, index) {
          final law = laws[index];
          return ListTile(
            title: Text(law['title']),
            subtitle: Text(law['content']),
          );
        },
      ),
    );
  }
}

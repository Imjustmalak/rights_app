import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../api_config.dart';
import 'laws_page.dart';

class BooksPage extends StatefulWidget {
  final String category;

  const BooksPage({super.key, required this.category});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  List<dynamic> books = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    try {
      final url = Uri.parse('$baseUrl/books?category=${Uri.encodeComponent(widget.category)}');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        setState(() {
          books = json.decode(response.body);
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
        });
        print('Failed to load books: ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching books: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.category} Books')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : books.isEmpty
          ? const Center(child: Text('No books found'))
          : ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            title: Text(book['name']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LawsPage(bookId: book['id'], bookName: book['name']),// navigates for laws page passing the book id
                ),
              );
            },
          );
        },
      ),
    );
  }
}

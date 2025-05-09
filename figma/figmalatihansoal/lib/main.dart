import 'package:flutter/material.dart';
import 'login_page.dart';
import 'login_detail_page.dart';
import 'main_feed_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(), // Halaman pertama login
        '/loginDetail': (context) => LoginDetailPage(), // Halaman login detail
        '/mainFeed': (context) => MainFeedPage(), // Halaman utama feed
      },
    );
  }
}

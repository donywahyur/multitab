import 'package:flutter/material.dart';
import 'package:multitab/page1.dart';
import 'package:multitab/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static List<Widget> _pages = [Page1(), Page2()];
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MultiTab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Aplikasi Multitab')),
        body: _pages[indexPage],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: indexPage,
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Page Scroll'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Page Konversi'),
            ],
            onTap: (index) {
              _selectTab(index);
            }),
      ),
    );
  }

  void _selectTab(int index) {
    return setState(() {
      indexPage = index;
    });
  }
}

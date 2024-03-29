import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            const Text(
              'Dony Wahyu Ramadhan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '20201145',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // //foto
            // //display image from assets
            // const Image(image: AssetImage('assets/dony.jpeg')),
            // const SizedBox(
            //   height: 20,
            // ),
            // const Text(
            //   'DonTech Company',
            //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // //logo
            // const Image(image: AssetImage('assets/logo.jpeg')),
            // ElevatedButton(
            //     onPressed: () {
            //       //show dialog
            //       myDialog(context);
            //     },
            //     child: const Text('Hubungi'))
          ],
        )),
      ),
    );
  }

  Future<dynamic> myDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Email'),
            content: const Text('donyramadhan3011@gmail.com'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Tutup'))
            ],
          );
        });
  }
}

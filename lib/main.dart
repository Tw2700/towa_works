import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ポートフォリオ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const portfolio(),
    );
  }
}

class portfolio extends StatefulWidget {
  const portfolio({super.key});

  @override
  State<portfolio> createState() => _portfolioState();
}

class _portfolioState extends State<portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(
        children: [
          Positioned(
            top: -500,
            left: -70,
            child: Transform.rotate(
              angle: pi / 2.7,
              child: Material(
                color: const Color.fromARGB(255, 241, 241, 241),
                child: Container(
                  color: const Color.fromARGB(255, 241, 241, 241),
                  width: 400,
                  height: 900,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Material(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(32),
              color: const Color.fromARGB(255, 241, 241, 241),
              child: IconButton(
                onPressed: () {
                  print('tap');
                },
                icon: const Icon(Icons.menu_sharp),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 32, left: 80),
            child: const Text('Menu'),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 250),
                Container(),
                const Text(
                  'TOWA ISHIKAWA',
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 3.0,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'TOWA ISHIKAWA is an Art Director/Designer based.',
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 3.0,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'He seeks and creates a more prominent design,',
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 3.0,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'together with his proficient partners.',
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 3.0,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text('Sclool'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_double_arrow_down_rounded),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12, left: 1190),
              width: 130,
              child: Image.asset('images/アイコンTwEDITER.png'),
            ),
            Positioned(
              left: 1360,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 3,
                    ),
                  ),
                ),
                child: Container(
                  color: const Color.fromARGB(255, 241, 241, 241),
                  width: 90,
                  height: 3000,
                ),
              ),
            ),
            Container(
              width: 90,
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                  ),
                ),
              ),
              child: Container(
                color: const Color.fromARGB(255, 241, 241, 241),
                width: 90,
                height: 3000,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 25),
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
              padding: const EdgeInsets.only(top: 12, left: 30),
              child: const Text('M'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 5),
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  onPressed: () {},
                  child: const Text('Top')),
            ),
            const Divider(
              color: Color.fromARGB(255, 0, 0, 0),
              thickness: 1,
              height: 610,
              indent: 20,
              endIndent: 1370,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 310, left: 11.5),
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  onPressed: () {},
                  child: const Text('About')),
            ),
            const Divider(
              color: Color.fromARGB(255, 0, 0, 0),
              thickness: 1,
              height: 670,
              indent: 20,
              endIndent: 1370,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 340, left: 12),
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  onPressed: () {},
                  child: const Text('Works')),
            ),
            const Divider(
              color: Color.fromARGB(255, 0, 0, 0),
              thickness: 1,
              height: 730,
              indent: 20,
              endIndent: 1370,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 370, left: 12),
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  onPressed: () {},
                  child: const Text('Contact')),
            ),
            const Divider(
              color: Color.fromARGB(255, 0, 0, 0),
              thickness: 1,
              height: 790,
              indent: 20,
              endIndent: 1370,
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
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            Positioned(
              left: 90,
              top: 742,
              child: Container(
                color: const Color.fromARGB(255, 255, 253, 253),
                width: 1270,
                height: 1000,
              ),
            ),
            Center(
              child: Column(
                children: const [
                  SizedBox(
                    height: 1000,
                  ),
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

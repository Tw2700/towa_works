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
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      drawer: const Drawer(),
      body: Row(
        children: [
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 280,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
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
                    height: 0,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 7),
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
                    height: 0,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 7),
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
                    height: 0,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 1),
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
                    height: 0,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),

          // SizedBox(
          //   width: 80,
          //   child: Column(
          //     children: [
          //       const SizedBox(height: 80),
          //       IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          //       const Spacer(),
          //       const Text('test'),
          //       const Spacer(),
          //     ],
          //   ),
          // ),
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    right: 40,
                    width: 130,
                    child: Image.asset('images/アイコンTwEDITER.png'),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 20, left: 25),
                  //   child: Material(
                  //     clipBehavior: Clip.antiAlias,
                  //     borderRadius: BorderRadius.circular(32),
                  //     color: const Color.fromARGB(255, 241, 241, 241),
                  //     child: IconButton(
                  //       onPressed: () {
                  //         print('tap');
                  //       },
                  //       icon: const Icon(Icons.menu_sharp),
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   padding: const EdgeInsets.only(top: 12, left: 30),
                  //   child: const Text('M'),
                  // ),

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
                          icon: const Icon(
                              Icons.keyboard_double_arrow_down_rounded),
                        ),
                        const SizedBox(
                          height: 100,
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 745,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 255, 253, 253),
                          width: 1260,
                          height: 1000,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 850,
                        ),
                        const Text(
                          'About',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 0, 0, 0),
                          thickness: 1,
                          height: 5,
                          indent: 590,
                          endIndent: 590,
                        ),
                        const Text(
                          '私とは',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 230),
                          child: Container(
                            color: const Color.fromARGB(255, 241, 241, 241),
                            width: 750,
                            height: 400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 850,
                        ),
                        Image.asset(
                            width: 130,
                            'images/AdobeStock_162997552-1024x683のコピー.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 400,
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
        ],
      ),
    );
  }
}

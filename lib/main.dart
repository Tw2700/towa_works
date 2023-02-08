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
      // builder: (context, child) => ResponsiveWrapper.builder(child,
      //     // maxWidth: 1200,
      //     // minWidth: 480,
      //     defaultScale: true,
      //     breakpoints: [
      //       // const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
      //       // const ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //       // const ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
      //     ],
      //     background: Container(color: const Color(0xFFF5F5F5))),
      // initialRoute: "/",
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
  final controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double scaleFactor;
    final double scaleFactor2;

    if (width <= 600) {
      scaleFactor = 0.5;
    } else if (600 < width && width < 1200) {
      final diff = width - 600;
      scaleFactor = diff * (0.5 / (1200 - 600)) + 0.5;
    } else {
      scaleFactor = 1;
    }

    if (width <= 600) {
      scaleFactor2 = 0.7;
    } else if (600 < width && width < 1200) {
      final diff = width - 600;
      scaleFactor2 = diff * (0.3 / (1200 - 600)) + 0.7;
    } else {
      scaleFactor2 = 1;
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
      drawer: const Drawer(),
      body: Row(
        children: [
          MediaQuery(
            data:
                MediaQuery.of(context).copyWith(textScaleFactor: scaleFactor2),
            child: Container(
              width: 90 * scaleFactor2,
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
                          onPressed: () {
                            controller.jumpTo(0);
                          },
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
                          onPressed: () {
                            controller.jumpTo(750);
                          },
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
                          onPressed: () {
                            controller.jumpTo(1500);
                          },
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
                          onPressed: () {
                            controller.jumpTo(2920);
                          },
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
              controller: controller,
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

                  MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(textScaleFactor: scaleFactor),
                    child: Center(
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
                          height: 750,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 800,
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
                          height: 150,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 260),
                          child: Container(
                            color: const Color.fromARGB(255, 241, 241, 241),
                            width: 750,
                            height: 400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 910,
                        ),
                        SizedBox(
                          width: 440,
                          height: 400,
                          child: Image.asset(
                            'images/test.png',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, 0.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 430),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 1080,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Text(
                            '石川人和',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 45),
                          child: Text(
                            'Webサイト制作',
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 250),
                          child: Text(
                            'アイウエオ愛上岡きくファファdふぁdファ',
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 175),
                          child: Text(
                            'あファdファdファdファdfああfs',
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2),
                          child: Text(
                            '動画編集  ',
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 223),
                          child: Text(
                            '文字を太字にするときは、TextStyleの',
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: Text(
                            'fgfgfgfgfgっっっf',
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 1496,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 232, 232, 232),
                          width: 1260,
                          height: 820,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 1495,
                    width: 930,
                    child: Image.asset('images/websitelamine.png'),
                  ),
                  Center(
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 1550,
                        ),
                        Text(
                          'Works',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 0, 0, 0),
                          thickness: 1,
                          height: 5,
                          indent: 590,
                          endIndent: 590,
                        ),
                        Text(
                          '作品',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 1750,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/free-shopify-themes-1024x666.webp',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 427),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 1750,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/free-shopify-themes-1024x666.webp',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 843),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 1750,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/free-shopify-themes-1024x666.webp',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 843),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2025,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/free-shopify-themes-1024x666.webp',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 427),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2025,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/free-shopify-themes-1024x666.webp',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2025,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/free-shopify-themes-1024x666.webp',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2310,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 247, 247, 247),
                          width: 1260,
                          height: 850,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 2310,
                    left: 500,
                    width: 730,
                    child: Image.asset('images/movie.png'),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2550,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/column_35_01.jpeg',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 427),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2550,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/simon-maage-351417-1024x684.jpeg',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 843),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2550,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/free-shopify-themes-1024x666.webp',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 843),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2825,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/free-shopify-themes-1024x666.webp',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 427),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2825,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/yakei.png',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2825,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                width: 1),
                          ),
                          width: 400,
                          height: 230,
                          child: Image.asset(
                            'images/free-shopify-themes-1024x666.webp',
                            fit: BoxFit.cover,
                            alignment: const Alignment(-0.3, -1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('sample1'),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 3160,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 195, 195, 195),
                          width: 1260,
                          height: 400,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 3250,
                        ),
                        Text(
                          'Contact',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 0, 0, 0),
                          thickness: 1,
                          height: 5,
                          indent: 590,
                          endIndent: 590,
                        ),
                        Text(
                          'コンタクト',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'お気軽にご連絡ください',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Isikawadesu@icloud.com',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Color.fromARGB(255, 0, 0, 0),
                          thickness: 1,
                          height: 5,
                          indent: 545,
                          endIndent: 545,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 3570,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 222, 222, 222),
                          width: 1260,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          MediaQuery(
            data:
                MediaQuery.of(context).copyWith(textScaleFactor: scaleFactor2),
            child: Positioned(
              left: 400,
              child: Container(
                width: 90 * scaleFactor2,
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
          ),
        ],
      ),
    );
  }
}

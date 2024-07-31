import 'package:flutter/material.dart';
import 'package:flutter_hello_sdk/flutter_hello_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello SDK Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            scrolledUnderElevation: 0,
            title: const Text('Flutter Hello SDK Example'),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sample Image',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const FlutterLogo(
                  size: 150,
                  style: FlutterLogoStyle.stacked,
                ),
                const Text(
                  'Sample GridView',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: List.generate(4, (index) {
                      return Container(
                        color: Colors.deepPurple[100 * (index % 9)],
                        child: Center(
                          child: Text('Item $index'),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
        ChatWidget(
          widgetToken: "ec5d6",
          uniqueId: "AA_94bb_0jd",
          name: "John Doe",
          mail: "johndoe@example.com",
          number: "+1234567890",
          widgetColor: const Color.fromARGB(255, 209, 58, 12),
        ),
      ],
    );
  }
}

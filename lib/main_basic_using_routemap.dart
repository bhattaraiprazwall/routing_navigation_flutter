//Flutter Default Material Page Routing//


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
      title: 'Flutter Demo',
      home: const FirstPage(),
      routes: 
      {
        '/second':(_)=>SecondPage(data: "ABC")
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('First page'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/second'
                  // MaterialPageRoute(
                  //   builder: (_) {
                  //     return const SecondPage(data: 'Hello from the First Page');
                  //   },
                  // ),

                );
              },
              child: Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;
  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(
      mainAxisAlignment: .center,
      children: [Text('Second page'), Text(data)])));
  }
}

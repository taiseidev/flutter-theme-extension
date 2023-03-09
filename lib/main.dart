import 'package:flutter/material.dart';
import 'package:theme_extension_sample/widgets/button/primary_button.dart';
import 'package:theme_extension_sample/widgets/button/primary_button_style.dart';
import 'package:theme_extension_sample/widgets/button/secondary_button.dart';

import 'widgets/button/secondary_button_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        extensions: const <ThemeExtension<dynamic>>[
          PrimaryButtonStyle(
            backgroundColor: Colors.deepPurple,
          ),
          SecondaryButtonStyle(
            backgroundColor: Colors.black,
          ),
        ],
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _twiceIncrementCounter() {
    setState(() {
      _counter + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            PrimaryButton(
              text: '+1',
              onPressed: () => _incrementCounter(),
            ),
            PrimaryButton(
              text: '+1',
              onPressed: () => _incrementCounter(),
              style: const PrimaryButtonStyle(backgroundColor: Colors.red),
            ),
            SecondaryButton(
              text: '+2',
              onPressed: () => _twiceIncrementCounter(),
              // style: const SecondaryButtonStyle(backgroundColor: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

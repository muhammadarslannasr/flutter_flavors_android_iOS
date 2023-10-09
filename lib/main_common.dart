import 'package:flutter/material.dart';
import 'package:flutter_flavor_example/flavor_config.dart';

void mainCommon({required FlavorConfig config}) {
  runApp(
    MyApp(config: config),
  );
}

class MyApp extends StatelessWidget {
  final FlavorConfig config;

  const MyApp({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flavor Tutorial',
      home: MyHomePage(config: config),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final FlavorConfig config;

  const MyHomePage({super.key, required this.config});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.config.appTitle!),
      ),
      body: Image.asset(
        widget.config.imageLocation!,
        fit: BoxFit.cover,
      ),
    );
  }
}

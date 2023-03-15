import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 375,
              height: 375,
              color: Colors.purple,
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: 118,
                height: 375,
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                width: 375,
                height: 118,
                color: Colors.red,
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 118,
                height: 375,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 256,
                height: 118,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ],
    );
    
  }
}

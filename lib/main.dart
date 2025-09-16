import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded'),
        ),
        // body: Center(
        //   child: Text('Hello, Flutter!'),
        body: Column(
          children: [
            _kotakUjii(Colors.amber, 150, 'Normal'),
            // _kotakUjii(Colors.green, 100, 'Flexible'),
            // _kotakUjii(Colors.blue, 250, 'Expanded'),

            Flexible(
              // fit: FlexFit.tight,
              fit: FlexFit.loose,
              flex: 1,
              child: _kotakUjii(Colors.green, 100, 'Flexible')),
            Expanded(flex: 2, child: _kotakUjii(Colors.blue, 250, 'Expanded')  
            )
          ],
        ),
        ),
    );
  }
}

Container _kotakUjii(Color warna, double tinggi, String teks) {
  return Container(
    width: double.infinity,
    height: tinggi,
    color: warna,
    alignment: const Alignment(0, 0),
    child: Text(
      teks,
      style: const TextStyle(color: Colors.white, fontSize: 30),
    ),
  );
}
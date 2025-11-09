import 'package:flutter/material.dart';
import 'ui/form_data.dart';
import 'ui/tampil_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Data Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => FormDataPage(),
        '/tampil': (context) => TampilDataPage(),
      },
    );
  }
}

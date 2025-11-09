import 'package:flutter/material.dart';

class TampilDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final nama = args['nama'];
    final nim = args['nim'];
    final umur = args['umur'];

    return Scaffold(
      appBar: AppBar(title: Text('Perkenalan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FormDataPage extends StatefulWidget {
  @override
  _FormDataPageState createState() => _FormDataPageState();
}

class _FormDataPageState extends State<FormDataPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Data')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: nimController,
              decoration: InputDecoration(labelText: 'NIM'),
            ),
            TextField(
              controller: tahunController,
              decoration: InputDecoration(labelText: 'Tahun Lahir'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final nama = namaController.text;
                  final nim = nimController.text;
                  final tahun = int.tryParse(tahunController.text) ?? 0;
                  final umur = DateTime.now().year - tahun;

                  Navigator.pushNamed(
                    context,
                    '/tampil',
                    arguments: {
                      'nama': nama,
                      'nim': nim,
                      'umur': umur,
                    },
                  );
                },
                child: Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

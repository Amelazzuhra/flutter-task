import 'package:flutter/material.dart';
import 'package:flutter_sesi5/cat.dart';

class DetailPage extends StatelessWidget {
  final Cat cat;
  DetailPage({required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Cat'),
        backgroundColor: Color.fromARGB(255, 255, 101, 155),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 203, 67, 227),
                ),
                child: Text(
                  cat.nama,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Times',
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Image.asset(
                cat.gambar,
                width: 200.0,
                height: 200.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text("Jenis Kucing : ${cat.jenis}"),
            Text("Asal Kucing : ${cat.asal}"),
            SizedBox(height: 10.0),
            Center(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 245, 123, 163)),
                child: Text(
                  'Deskripsi',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Times',
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '${cat.detail}',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

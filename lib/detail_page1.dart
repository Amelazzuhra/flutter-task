import 'package:flutter/material.dart';
import 'package:flutter_sesi5/cat.dart';

class DetailPage extends StatelessWidget {
  final Cat cat;
  const DetailPage({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('aplikasi listcat')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(radius)
                ),
              ),
            )
            textTitle(cat.nama, Colors.black),
            SizedBox(height: 15),
            Image(image: AssetImage(cat.gambar)),
            SizedBox(height: 10),
            SizedBox(height: 10),
            textAttribute("jenis", cat.jenis),
            textAttribute("detail", cat.detail),
            SizedBox(height: 10),
            textTitle('Deskripsi', Colors.grey),
            SizedBox(height: 10),
            Text(
              cat.detail,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            Container textTitle(String value, Color bgColor) {
              return Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(color: bgColor),
                child: Text(
                  value,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white),
                ),
              ):
            }

            Row textAttribute(String label, String value) {
              return Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Text(
                      "- $label",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Text(
                    ":",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(value, style: TextStyle(fontSize: 18)),
                ],
              ):
            }
            // Container(
            //   padding: const EdgeInsets.all(10),
            //   alignment: Alignment.center,
            //   decoration: const BoxDecoration(color: Colors.yellow),
            //   child: const Text(
            //     'Amelda Nur Azzuhra',
            //     style: TextStyle(
            //         color: Color.fromARGB(255, 255, 255, 255),
            //         fontWeight: FontWeight.bold,
            //         fontSize: 25),
            //   ),
            // ),
            // Image(
            //   image: NetworkImage(
            //       "https://media.istockphoto.com/id/679510864/id/foto/gadis-kecil-menggunakan-ayunan-di-taman.jpg?s=612x612&w=0&k=20&c=L5XhjjFehhoyPKYksh_sERMXL7cOVquqaCWESOaWa38="),
            // ),
            // const Image(image: AssetImage('assets/foto2.avif')),
            // SizedBox(height: 10),

            // Row(
            //   children: [
            //     btnContact(Icons.email, Colors.orange,
            //         "mailto:${biodata['email'] ?? ''}"),
            //     SizedBox(width: 10),
            //     btnContact(Icons.chat_bubble_outline_rounded, Colors.purple,
            //         "https://wa.me${biodata['phone'] ?? ''}"),
            //     SizedBox(width: 10),
            //     btnContact(
            //         Icons.phone, Colors.green, "tel:${biodata['phone'] ?? ''}"),
            //   ],
            // ),
            // textProfile("Name", biodata['name'] ?? ''),
            // textProfile("Alamat", biodata['address'] ?? ''),

            // Container(
            //   padding: const EdgeInsets.all(10),
            //   alignment: Alignment.center,
            //   decoration: const BoxDecoration(color: Colors.lightBlue),
            //   child: const Text(
            //     'Deskripsi',
            //     style: TextStyle(
            //         color: Color.fromARGB(255, 255, 255, 255),
            //         fontWeight: FontWeight.bold,
            //         fontSize: 25),
            //   ),
            // ),
            // Text(
            //     "Hallo ini saya Amelda, saya seorang mahasiswa Institut Digital Ekonomi LPKIA dan sedang belajar flutter")
          ],
        ),
      ),
    );
  }

  Row textProfile(String label, String teks) {
    return Row(
      children: [
        Container(
          width: 80,
          child: Text(
            "- $label",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        const Text(":", style: TextStyle(fontSize: 18)),
        Text(teks, style: const TextStyle(fontSize: 18)),
      ],
    );
  }

  Expanded btnContact(IconData iconBtn, Color color, String uri) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          launch(uri);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white)),
        child: Icon(iconBtn),
      ),
    );
  }
}

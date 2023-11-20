import 'package:flutter/material.dart';
import 'package:flutter_sesi5/cat.dart';
import 'package:flutter_sesi5/detail_page.dart';

class HomePage extends StatelessWidget {
  List<Cat> listCat = Cat.dummyData;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.list),
              Text(
                "list kucing",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: listCat.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(cat: listCat[index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(1, 2),
                                  blurRadius: 6),
                            ]),
                        child: Row(
                          children: [
                            ClipRect(
                              child: Image.asset(
                                listCat[index].gambar,
                                width: 85,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  listCat[index].nama,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Text(listCat[index].jenis),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

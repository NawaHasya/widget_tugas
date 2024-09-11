import 'package:flutter/material.dart';

class RowColum extends StatelessWidget {
  const RowColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 174, 16, 202),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage("assets/bgovo.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "OVO",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Promo"),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 97, 0, 114),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/bgovo2.jpeg"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Text("OVO Cash", style: TextStyle(color: Colors.white)),
                  Text("Total Saldo:", style: TextStyle(color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rp.100.000",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text("68 Poin"),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      _promoCard("assets/promo.jpg", "Diskon Besar-besaran!!"),
                      _promoCard(
                          "assets/promo2.jpg", "Promo Hemat Cuma Pakai OVO"),
                      _promoCard("assets/promo3.jpg",
                          "Cashback 50% Sampai Akhir Bulan!"),
                      _promoCard(
                          "assets/promo4.jpg", "Promo Menarik Bulan Ini!!"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              height: 200,
              child: GridView.count(
                crossAxisCount: 5,
                mainAxisSpacing: 10,
                crossAxisSpacing: 0,
                padding: EdgeInsets.all(8),
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/pulsa.png'),
                          width: 50,
                        ),
                        Text(
                          "Pulsa/Paket Data",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/petir.png'),
                          width: 50,
                        ),
                        Text(
                          "PLN",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/tv.jpg'),
                          width: 50,
                        ),
                        Text(
                          "Internet & TV Kabel",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/air.jpg'),
                          width: 50,
                        ),
                        Text(
                          "Air PDAM",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/emoney.png'),
                          width: 50,
                        ),
                        Text(
                          "Uang Elektronik",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/pinjaman.png'),
                          width: 50,
                        ),
                        Text(
                          "Pinjaman",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/tagihan.png'),
                          width: 50,
                        ),
                        Text(
                          "Angsuran Kredit",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  }

Widget _promoCard(String imagePath, String text) {
  return Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 0, 180)),
        borderRadius: BorderRadius.circular(8)),
    child: Column(
      children: [
        Image(
          image: AssetImage(imagePath),
        ),
        Text(text),
      ],
    ),
  );
}

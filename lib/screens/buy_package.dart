import 'package:flutter/material.dart';

class BuyPackage extends StatefulWidget {
  const BuyPackage({Key? key}) : super(key: key);

  @override
  State<BuyPackage> createState() => _BuyPackageState();
}

class _BuyPackageState extends State<BuyPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
            child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Ad Soyad"),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(labelText: "Kart Numarası"),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(labelText: "Cvc"),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(labelText: "Son Kullanma Tarihi"),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/buy_package_end");
                },
                child: Text("Ödeme yap"))
          ],
        )),
      ),
    );
  }
}

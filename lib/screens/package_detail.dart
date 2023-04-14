import 'package:flutter/material.dart';

class PackageDetail extends StatefulWidget {
  const PackageDetail({Key? key}) : super(key: key);

  @override
  State<PackageDetail> createState() => _PackageDetailState();
}

class _PackageDetailState extends State<PackageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beslenme Programı"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/assets/sporcu-beslenmesi.jpg",width: MediaQuery.of(context).size.width ,height: 400,fit: BoxFit.fill,),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

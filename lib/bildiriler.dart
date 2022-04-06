import 'package:flutter/material.dart';

class Bildiriler extends StatelessWidget {
  const Bildiriler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Ağırlık",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                Divider(color: Colors.grey,indent: 20,endIndent: 20),
                Image.asset("images/film.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get_invincible/core/textFont.dart';

class Bildiriler extends StatelessWidget {
  const Bildiriler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalori Takip Grafiği",style: TextFonts.instance.appBarTitle),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 200),
                Image.asset("images/calories_graph.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

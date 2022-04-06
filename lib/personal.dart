import 'package:flutter/material.dart';

class Personel extends StatelessWidget {
  const Personel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Kişisel Bilgiler",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      leading: Icon(Icons.height),
                      title: Text("Boy"),
                      subtitle: Text("data"),
                      trailing: Icon(Icons.send),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      leading: Icon(Icons.balance),
                      title: Text("Kilo"),
                      subtitle: Text("data"),
                      trailing: Icon(Icons.send),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text("BKI"),
                      subtitle: Text("data"),
                      trailing: Icon(Icons.send),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/bki.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.facebook,
                            size: 40,
                          ),
                          Icon(
                            Icons.facebook,
                            size: 40,
                          ),
                          Icon(
                            Icons.facebook,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

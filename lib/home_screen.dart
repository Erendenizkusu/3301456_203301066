import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        title: Text("Evde Karın Egzersizleri"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed("/exercise");},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          Text("1.gün",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("15 Egzersiz"),
                        ]
                        ),
                      ),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed("/exercise");},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          Text("1.gün",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("15 Egzersiz"),
                        ]
                        ),
                      ),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed("/exercise");},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          Text("1.gün",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("15 Egzersiz"),
                        ]
                        ),
                      ),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed("/exercise");},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          Text("1.gün",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("15 Egzersiz"),
                        ]
                        ),
                      ),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed("/exercise");},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          Text("1.gün",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("15 Egzersiz"),
                        ]
                        ),
                      ),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed("/exercise");},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          Text("1.gün",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("15 Egzersiz"),
                        ]
                        ),
                      ),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed("/exercise");},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          Text("1.gün",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("15 Egzersiz"),
                        ]
                        ),
                      ),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed("/exercise");},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          Text("1.gün",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("15 Egzersiz"),
                        ]
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

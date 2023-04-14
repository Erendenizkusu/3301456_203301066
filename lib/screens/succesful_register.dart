import 'package:flutter/material.dart';

class SuccesfulRegister extends StatefulWidget {
  const SuccesfulRegister({Key? key}) : super(key: key);

  @override
  State<SuccesfulRegister> createState() => _SuccesfulRegisterState();
}

class _SuccesfulRegisterState extends State<SuccesfulRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/succesful_screen.jpg'))),
      ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text('KAYIT BAŞARILI',style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 30,fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 40),
        ElevatedButton(onPressed: () {
          Navigator.of(context).popAndPushNamed("/login");
        }, child: Text('Devam Et',style: TextStyle(color: Colors.white,fontSize: 24),),
        style: TextButton.styleFrom(backgroundColor: Colors.black),
        ),
      ]),
    );
  }
}

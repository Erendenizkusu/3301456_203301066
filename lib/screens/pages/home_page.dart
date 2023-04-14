import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_invincible/auth.dart';
import '../../core/colors.dart';
import '../../core/textFont.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async{
    await Auth().signOut();
  }

  /*Widget _title(){
    return const Text('Firebase Auth');
  }*/

  Widget _userUid(){
    return Text(user?.email ?? 'User Email');
  }

  Widget _signOutButton(){
    return ElevatedButton(
        onPressed: signOut,
        child: const Text('Sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('İçerikler',
              style: TextFonts.instance.appBarTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SafeArea(
              child: Column(
                  children: [
                    InkWell(
                      onTap: () {Navigator.of(context).pushNamed("/home");
                      },
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                        BoxDecoration(
                          color:ColorConstants.instance.lightGreyCardCollor,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('images/card_image.jpg'),
                            opacity: 0.3,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Başlangıç Düzeyi',style: TextFonts.instance.middleText),
                              SizedBox(height: 13),
                              Text('Yağlardan Kurtul',style: TextFonts.instance.middleTitle,),
                              SizedBox(height: 20),
                              Text('29 gün kaldı',style: TextFonts.instance.smallText),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/extras');
                      },
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                        BoxDecoration(
                            color:ColorConstants.instance.lightGreyCardCollor,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('images/extras.jpg'),
                              fit: BoxFit.cover,
                              opacity: 0.9,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('MERAK ETTİKLERİNİZ',style: TextFonts.instance.middleTitle),
                                Text('-Uzaktan Eğitim', style: TextFonts.instance.smallText),
                                Text('-Block Yazıları', style: TextFonts.instance.smallText),
                                Text('-İletişim Bilgileri', style: TextFonts.instance.smallText),
                              ]),
                        ),
                      ),
                    ),
                    _userUid(),
                    _signOutButton(),
                  ])
          ),
        ),  
      );
  }
}

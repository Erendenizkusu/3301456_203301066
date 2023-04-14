import 'package:flutter/material.dart';
import 'package:get_invincible/core/textFont.dart';

class Package extends StatelessWidget {
  const Package({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paketler', style: TextFonts.instance.appBarTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed("/package_detail");
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    title: Text('Beslenme Programı',style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 25),),
                    subtitle: Text("Kalori Hesaplı Beslenme"),
                    trailing: Icon(Icons.baby_changing_station),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/buy_package');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    title: Text('Ücretli Paket',style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 25),),
                    subtitle: Text("Kişiye Özel"),
                    trailing: Icon(Icons.baby_changing_station),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  title: Text('Ücretsiz Program',style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 25),),
                  subtitle: Text('Klasik Paket'),
                  trailing: Icon(Icons.baby_changing_station),
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}

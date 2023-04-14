import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_invincible/auth.dart';
import 'package:get_invincible/product/text_field.dart';
import '../../core/textFont.dart';
import '../../product/dark_button.dart';
import '../../product/texts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String? errorMessage = '';
  bool isLogin = true;
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerPasswordAgain = TextEditingController();
  Future<void> signInWithEmailAndPassword() async{
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async{
    try {
      await Auth().createUserWithEmailAndPassword(
        username: _controllerUsername.text,
        email: _controllerEmail.text,
        password: _controllerPassword.text,
        passwordagain: _controllerPasswordAgain.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title(){
    return const Text('Firebase Auth');
  }

  Widget _entryField(
      String labelText,
      String hintText,
      IconData icon,
      TextEditingController controller,
      ){
    return TextFieldCustom(
      controller: controller,
      icon: icon,
      hint_text: hintText,
      label_text: labelText,
    );
  }
  
  Widget _errorMessage(){
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  Widget _submitButton(){
    return ElevatedButton(
        onPressed: isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
        child: Text(isLogin ? 'Login' : 'Register'),
    );
  }

  Widget _loginOrRegisterButton(){
    return TextButton(
        onPressed: (){
          setState(() {
            isLogin = !isLogin;
          });
        },
        child: Text(isLogin ? 'Hesabın yok mu?  Kayıt Ol' : 'Bunun Yerine Giriş Yap'),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return Scaffold(

        appBar: AppBar(
            title: Text('Giriş Ekranı', style: TextFonts.instance.imageFront)),
        body: Container(
          padding: EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 30),
                  Text(Texts().loginTitle, style: TextFonts.instance.boldText),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _entryField('Email','Email adresinizi girin...',Icons.email_outlined,_controllerEmail),
                        _entryField('Password','Şifrenizi giriniz...',Icons.key,_controllerPassword),
                        _errorMessage(),
                        _submitButton(),
                        _loginOrRegisterButton(),
                      ],
                    ),
                  Container(
                    alignment: Alignment.bottomRight,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.85,
                    child: Text(Texts().forgotPassword,
                        style: TextFonts.instance.weekText),
                  ),
                  Text(Texts().orLoginWith, style: TextFonts.instance.weekText),
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add),
                        Icon(Icons.add),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text('Kayıt Ekranı',style: TextFonts.instance.appBarTitle)),
        body: Container(
          padding: EdgeInsets.all(20),
                    height: double.infinity,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Texts().register, style: TextFonts.instance.boldText),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                        _entryField('Username', 'Kullanıcı adı giriniz...', Icons.people_alt_outlined, _controllerUsername),
                        _entryField('Email','Email adresinizi girin...',Icons.email_outlined,_controllerEmail),
                        _entryField('Password','Şifrenizi giriniz...',Icons.key,_controllerPassword),
                        _errorMessage(),
                        _submitButton(),
                        _loginOrRegisterButton(),
      ]),
                  Container(
                    alignment: Alignment.bottomRight,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.85,
                    child: Text(Texts().forgotPassword, style: TextFonts.instance.weekText),
                  ),
                  Text(Texts().orLoginWith, style: TextFonts.instance.weekText),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add),
                        Icon(Icons.add),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
            ]),
            ),
      );
    }
  }
}

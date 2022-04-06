import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.87,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Login",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Username"),
                            prefixIcon: Icon(Icons.account_circle_outlined),
                            hintText: "Type Your Username"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Password"),
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Type Your Password"),
                      ),
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.bottomRight,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: const Text(
                      "Forgot password",
                      style: TextStyle(color: Colors.grey),
                    )),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {Navigator.of(context).pushNamed("/home");},
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                const Text(
                  "Or Login With",
                  style: TextStyle(color: Colors.grey),
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
                Column(
                  children: [
                    const Text(
                      "Or Sign Up with",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).popAndPushNamed("/register");
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

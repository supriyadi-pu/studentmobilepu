import 'package:flutter/material.dart';
import 'package:studentmobile/Colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  bool passenable = true; //boolean value to track password view enable disable.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Contoh",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),
        ),
        backgroundColor: Primary(),
      ),
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 300,
          ),
          Container(
            height: 400,
            margin: EdgeInsets.only(top: 150,left: 10,right: 10,bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    color: Primary(),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      controller: controllerUsername,
                      decoration: InputDecoration(
                          hintText: 'Masukan Username Anda...',
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                          suffixIcon: controllerUsername.text.isEmpty ? Container(width: 0,): IconButton(
                            icon: Icon(
                                Icons.close,
                                color: Colors.red),
                            onPressed: ()=> controllerUsername.clear(),
                          )
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      controller: controllerPassword,
                      decoration: InputDecoration(
                          hintText: 'Masukan Password Anda...',
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              icon: passenable
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onPressed: () =>
                                  setState(() => passenable = !passenable)
                          )
                      ),
                      obscureText: passenable,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                    )
                ),
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

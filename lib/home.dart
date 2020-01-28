import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.width / 2,
              child: Image.network(
                  "https://www.digicert.com/account/images/login-shield.png")),
          Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 16, top: 8, bottom: 8),
            child: TextField(
              obscureText: false,
              keyboardType: TextInputType.text,
              onChanged: (String email) {},
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 16, top: 8, bottom: 8),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              onChanged: (String email) {},
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'password',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 12),
            height: MediaQuery.of(context).size.width / 7,
            color: Colors.blue[300],
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 25),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 70),
            child: Center(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Didn't have account?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width / 25),
                    ),
                  ),
                   InkWell(
                     onTap: (){},
                     child: Container(
                      child: Text(
                        " Signup",
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: MediaQuery.of(context).size.width / 25),
                      ),
                  ),
                   ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

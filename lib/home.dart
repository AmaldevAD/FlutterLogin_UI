import 'package:flutter/material.dart';
import './forgotpassword.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 80),
              height: MediaQuery.of(context).size.width / 2.5,
              child: Image.asset(
                "assets/images/TCRWA.png",
              )),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "TCR",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width / 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "WA",
                  style: TextStyle(
                      color: Colors.blue[300],
                      fontSize: width / 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 12,
                right: MediaQuery.of(context).size.width / 12,
                top: 6),
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
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 12,
                right: MediaQuery.of(context).size.width / 12,
                top: 16,
                bottom: 20),
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
            color: Colors.blue[400],
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 18),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPassord(),
                    ),
                  );
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width / 25),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: width / 4),
            child: Center(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Don't have account?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width / 25),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
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

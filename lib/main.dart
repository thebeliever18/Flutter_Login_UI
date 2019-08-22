import 'package:flutter/material.dart';
import './presentation/my_flutter_app_icons.dart';
import './presentation/my_flutter_logo_icons.dart';

void main() => runApp(LoginUI());

class LoginUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: forms(),
    );
  }
}

Widget forms() {
  return Scaffold(
    resizeToAvoidBottomPadding: false,
    body: cont(),
  );
}

Widget cont() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/login_wall.jpg'), fit: BoxFit.fill)),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30.0, left: 350.0),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.pink[50]),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Stack(
              children:[
              Padding(
                padding: EdgeInsets.only(top: 100.0, left: 105.0),
                child: Icon(
                  MyFlutterApp.hexagon_1_,
                  color: Colors.white,
                  size:60.0,
              ),
            ),
            Positioned(
              top: 115.0,
              left: 125.0,
              child:
                Text("H.",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.indigo[400]
            ),))]),
            Padding(
              padding: EdgeInsets.only(top: 100.0, left: 15.0),
              child: Text('Hexagon',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
              child: TextField(
                
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    hintText: 'Username',
                    contentPadding: EdgeInsets.all(23.0),
                    hintStyle: TextStyle(
                      color: Colors.black87
                    )),
              ),
            ))
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 18.0, left: 40.0, right: 40.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    hintText: 'Password',
                    contentPadding: EdgeInsets.all(23.0),
                    hintStyle: TextStyle(
                      color: Colors.black87
                    )),
              ),
            ))
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 60.0, left: 40.0, right: 40.0),
              child: btn,
            ))
          ],
        ),
        Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 22.0, left: 95.0),
            child: Text(
              "Don't have an account?",
              style: TextStyle(color: Colors.white, fontSize: 16.5),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 22.0,left: 5.0),
            child: Text(
              "Sign up",
              style: TextStyle(color: Colors.white, fontSize: 16.5,
              decoration: TextDecoration.underline),
              
            ),
          )
        ]),
        Padding(
            padding: EdgeInsets.only(top: 45, left: 15.0),
            child: Text(
              "Login with Social Network",
              style: TextStyle(color: Colors.white, fontSize: 16.5),
            ),
          ),

        Row(
            children:[
              Padding(
                padding: EdgeInsets.only(left: 150.0,top: 25.0),
                child:
                Icon(Logos.facebook_circled,
                size: 30.0,
                color: Colors.blue[600],),
              ),
              
              Padding(
                padding: EdgeInsets.only(left:10.0,top: 25.0),
                child:
                Icon(Logos.twitter_circled,
                size: 30.0,
                color: Colors.blue[200],),
              ),
              Padding(
                padding: EdgeInsets.only(left:10.0,top: 25.0),
                child: 
                Icon(Logos.gplus_circled,
                size: 30.0,
                color: Colors.orange[600],)
              )
            ],)
      ],
    ),
  );
}

final btn = ButtonTheme(
    height: 60.0,
    child: FlatButton(
      child: Text(
        'LOGIN',
        style: TextStyle(fontSize: 17.0, color: Colors.white),
      ),
      color: Colors.pink[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      onPressed: () {},
    ));

import 'package:flutter/material.dart';
import 'package:memo_kids/views/edit_profile.dart';
import 'package:memo_kids/views/login_success.dart';
import 'package:memo_kids/views/register_screen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visible = false;

  final _usernameCtrl = new TextEditingController();
  final _passwordCtrl = new TextEditingController();

  TextEditingController usr = new TextEditingController();
  TextEditingController pwd = new TextEditingController();

  Future userLogin() async {
    setState(() {
      visible = true;
    });

    // Getting value from Coltroller
    String _username = _usernameCtrl.text;
    String _password = _passwordCtrl.text;

    // Server Login api url
    // var url = 'https://memo-kids-api.000webhostapp.com/signin.php';
     var url = 'http://10.1.4.171/memo-kids/signin.php';

    // store all data with param name
    var data = {'username': _username, 'passwords': _password};

    // starting web api call.
    var response = await http.post(url, body: json.encode(data));

    Map<String, dynamic> message = jsonDecode(response.body);

    print('${message['status']}');

    //  if the response Message is Matched.
    if ('${message['status']}' == 'true') {
      setState(() {
        visible = false;
      });

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EditProfile()));

      print('login success');
    } else {
      setState(() {
        visible = false;
      });

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Warning'),
              content: Text('Username or Password Invalid !'),
              actions: <Widget>[
                FlatButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/bg.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'assets/images/mom_login.png',
                      width: 150.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'MEMO-KID',
                    style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: TextField(
                      controller: _usernameCtrl,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Username',
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: TextField(
                      controller: _passwordCtrl,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Password',
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        child: Text('Sign In'),
                        color: Colors.blue[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        onPressed: () {
                          // todo
                          userLogin();
//                          Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => EditProfile()),
//                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  // todo
                                  print('register');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterScreen()),
                                  );
                                },
                                child: Text(
                                  'Register',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Forgot Password',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Visibility(
                visible: visible,
                child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: CircularProgressIndicator())),
          ),
        ],
      ),
    );
  }
}

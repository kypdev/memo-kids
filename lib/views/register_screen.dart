import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstnmeCtrl = TextEditingController();
  TextEditingController _lastnameCtrl = TextEditingController();
  TextEditingController _usernameCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();
  TextEditingController _conpasswordCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _conemailCtrl = TextEditingController();
  TextEditingController _contactCtrl = TextEditingController();
  TextEditingController _birthCtrl = TextEditingController();

  bool visible = false;

  Future userSignup() async {
    setState(() {
      visible = true;
    });

    // get value form
    String _firstname = _firstnmeCtrl.text;
    String _lasname = _lastnameCtrl.text;
    String _username = _usernameCtrl.text;
    String _password = _passwordCtrl.text;
    String _conpassword = _conpasswordCtrl.text;
    String _email = _emailCtrl.text;
    String _contact = _contactCtrl.text;
    String _birth = _birthCtrl.text;
    String _pwd;

    if (_password == _conpassword) {
      _pwd = _password;
    }

    // store all data with param name
    var data = {
      'firstname': _firstname,
      'lastname': _lasname,
      'username': _username,
      'passwords': _pwd,
      'email': _email,
      'contact': _contact,
      'birth': _birth
    };

    // Server Login api url
    var url = 'http://10.1.4.171/memo-kids/signup.php';
    // var url = 'https://memo-kids-api.000webhostapp.com/signup.php';

    // starting web api call.
    var response = await http.post(url, body: json.encode(data));

    Map<String, dynamic> message = jsonDecode(response.body);
    //var message = jsonDecode(response.body);

    print(data);
    print('${message}');

    //  if the response Message is Matched.
    if ('${message['status']}' == 'true') {
      setState(() {
        visible = false;
      });

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Warning'),
              content: Text('Signin success'),
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

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Login()));

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
              content: Text('Username or Email already exists!'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('สมัครสมาชิก'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _firstnmeCtrl,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'ชื่อ',
                          hintText: 'ชื่อ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _lastnameCtrl,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'นามสกุล',
                          hintText: 'นามสกุล',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _usernameCtrl,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'ชื่อผู้ใช้',
                          hintText: 'ชื่อผู้ใช้',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      obscureText: true,
                      controller: _passwordCtrl,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'รหัสผ่าน',
                          hintText: 'รหัสผ่าน',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      obscureText: true,
                      controller: _conpasswordCtrl,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'ยืนยันรหัสผ่าน',
                          hintText: 'ยืนยันรหัสผ่าน',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _emailCtrl,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: 'อีเมล',
                          hintText: 'อีเมล',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      controller: _contactCtrl,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          labelText: 'ติดต่อ',
                          hintText: 'ติดต่อ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _birthCtrl,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.card_giftcard),
                          labelText: 'วันเกิด',
                          hintText: 'วันเกิด',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.amber,
                      onPressed: () {
                        // todo
                        print('signup');
                        userSignup();
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            'สมัครสมาชิก',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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

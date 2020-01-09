import 'package:flutter/material.dart';
import 'package:memo_kids/views/edit_profile.dart';
import 'package:memo_kids/views/register_screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usr = new TextEditingController();
  TextEditingController pwd = new TextEditingController();

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
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Password',
                        labelText: 'Password',
                      ),
                    ),
                  ),

                  SizedBox(height: 24.0,),

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
                        onPressed: (){
                          // todo
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EditProfile()),
                          );
                        },
                      ),
                    ),
                  ),

                  SizedBox(height: 24.0,),

                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: Row(
                      children: <Widget>[

                        Expanded(
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  // todo
                                  print('register');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Register_Screen()),
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

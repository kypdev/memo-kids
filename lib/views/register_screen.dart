import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Register_Screen extends StatefulWidget {
  @override
  _Register_ScreenState createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  TextEditingController tel_register = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFfdd31d),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.yellow[100],
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(
                    color: Color(0xffdaf7ff),
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0)),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 24.0, right: 24.0),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.phone),
                                hintText: 'เบอร์มือถือ',
                                labelText: 'เบอร์มือถือ'),
                          ),
                        ),
                        SizedBox(height: 24.0),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 24.0, right: 24.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: RaisedButton(
                              child: Text(
                                'ดำเนินการ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              color: Colors.deepOrange[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0)),
                              onPressed: () {
                                // process tel
                                print('process tel');
                                Alert(
                                    context: context,
                                    title: "ยืนยันรหัส OTP",
                                    content: Column(
                                      children: <Widget>[
                                        TextField(),
                                        SizedBox(height: 24.0),
                                        Text(
                                            'รหัสอ้างอิง OTP D34RS ภายในเวลาา 59 วินาที'),
                                      ],
                                    ),
                                    buttons: [
                                      DialogButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text(
                                          "LOGIN",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      )
                                    ]).show();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 50.0),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 24.0, right: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                'สมัครด้วย',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 24, right: 24),
                          child: RaisedButton(
                            color: Color(0xff3b5998),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 24.0),
                                Text(
                                  'ดำเนินการด้วย Facebook',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              // todo
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24, right: 24),
                          child: RaisedButton(
                            color: Color(0xffD44638),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 24.0),
                                Text(
                                  'ดำเนินการด้วย Google',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              // todo
                            },
                          ),
                        ),
                        SizedBox(height: 24.0),
                      ],
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

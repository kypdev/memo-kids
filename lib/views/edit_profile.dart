import 'package:flutter/material.dart';
import 'package:memo_kids/views/home_page.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ข้อมูลส่วนตัว'),
        backgroundColor: Color(0xFFfdd31d),
      ),
      body: Center(
        child: Stack(
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
                          SizedBox(height: 24.0),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, right: 24.0),
                            child: TextField(
                              cursorColor: Color(0xfffdd31d),
                              decoration: InputDecoration(
                                hintText: 'ชื่อจริงภาษาไทย',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                  borderSide: BorderSide(
                                    color: Color(0xFFfdd31d),
                                    width: 10.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, right: 24.0),
                            child: TextField(
                              cursorColor: Color(0xfffdd31d),
                              decoration: InputDecoration(
                                hintText: 'นามสกุลภาษาไทย',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                  borderSide: BorderSide(
                                    color: Color(0xFFfdd31d),
                                    width: 10.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, right: 24.0),
                            child: Divider(
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Text(
                            'วันกำหนดคลอด',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, right: 24.0),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.calendar_today),
                                hintText: 'วันที่ / เดือน / พ.ศ.',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                  borderSide: BorderSide(
                                    color: Color(0xFFfdd31d),
                                    width: 10.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, right: 24.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Checkbox(
                                  onChanged: (bool value) {
                                    setState(() {
                                      agree = value;
                                    });
                                  },
                                  value: agree,
                                ),
                                Text(
                                  'ยินดียอมรับเงื่อนไข',
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'ยินดียอมรับเงื่อนไข',
                          ),
                          Text(
                            'นโยบายความเป็นส่วนตัว / ข้อตกลงและเงื่อนไข',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(height: 18.0),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, right: 24.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                child: Text(
                                  'ตกลง',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                                onPressed: () {
                                  print('ok edit profile');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                color: Colors.blue,
                              ),
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
      ),
    );
  }
}

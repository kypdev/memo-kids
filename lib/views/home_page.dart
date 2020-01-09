import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text(
            'Home Page',
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.yellow[100],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
              child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0, bottom: 16.0),
                                child: Image.asset(
                                  'assets/images/mom_login.png',
                                  height: 100.0,
                                ),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'กำหนดคลอด : ',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text(
                                        '21 ก.ย. 2520',
                                        style: TextStyle(
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 16.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'อายุครรภ์ : ',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text(
                                        '2 สัปดาห์',
                                        style: TextStyle(
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Card(
                        color: Colors.lightBlueAccent,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 16.0),
                              Text(
                                'title',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, right: 16.0),
                                  child: Text(
                                    'descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                                child: Image.asset(
                                  'assets/images/mom_login.png',
                                  height: 150.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
            ),

            
          ],
        ));
  }
}

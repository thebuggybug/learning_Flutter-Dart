import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.red),
        title: "My application",
        home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Text("Flutter Dev ",
                style: TextStyle(color: Colors.amberAccent)),
            leading: Icon(
              Icons.account_box,
              size: 28,
              color: Colors.pink,
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.baseline

            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                // width: 60,
                // height: 60,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),

                  color: Colors.amber, // container border

                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink, spreadRadius: 8,
                      // offset: Offset(12.2, 9.0)
                    ),
                  ],
                ),
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text(
                    "Learn Flutter day by day and become a professional",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        backgroundColor: Colors.white70,
                        letterSpacing: 1.1,
                        wordSpacing: 2,
                        shadows: [
                          Shadow(color: Colors.blue, offset: Offset(1.1, 1.2))
                        ])),
              ),
              // Rich Text; for applying styles in different texts
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(14)),
                padding: EdgeInsets.all(10),
                child: (RichText(
                  text: TextSpan(
                      text: "Learning Rich Text",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: " Heree we go ",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                color: Colors.brown))
                      ]),
                )),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(16.0),
                child: (TextField(
                  // obscureText: true, // hides input password
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: " NAME",
                      hintText: "Enter Your name here"),
                )),
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(16.0),
                child: (TextField(
                  obscureText: true, // hides input password
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: " PASSWORD",
                      hintText: "Enter password"),
                )),
              )
            ],
          ),
        ));
  }
}

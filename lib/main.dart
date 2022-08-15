import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.red),
        title: "My application",

        home: Scaffold(

            backgroundColor: Colors.greenAccent,

          appBar: AppBar(
            title: Text("Application Title Bar ",
                style: TextStyle(color: Colors.amberAccent)),
            leading: Icon(Icons.account_box, size: 28, color: Colors.pink,),
            backgroundColor: Colors.black,

          ),


          body: Container(
            height: 200,
            width: 200,

            decoration: BoxDecoration(
              border: Border.all(width: 16, color: Colors.blue),
              color: Colors.deepOrange,
              boxShadow: [
                BoxShadow(color: Colors.pink, spreadRadius: 16,
                    offset: Offset(12.2, 9.0)),
            ],

              borderRadius: BorderRadius.circular(200), // container border
          
            ),
            transform: Matrix4.rotationZ(0.1),
            constraints: BoxConstraints.expand(height: 250, width: 400),
            
            alignment: Alignment.center,
            margin: EdgeInsets.all(100),
            // padding: EdgeInsetsDirectional.all(10),
            // color: Colors.deepOrange,

            child: Text("Apple", style: TextStyle(fontSize: 50, color: Colors.black)),
          )
        )
    );
  }
}

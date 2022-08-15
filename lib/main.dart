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

          appBar: AppBar(
            title: Text("Application Title Bar ",
                style: TextStyle(color: Colors.amberAccent)),
            leading: Icon(Icons.account_box, size: 28, color: Colors.pink,),
            backgroundColor: Colors.black,
          ),

          backgroundColor: Colors.greenAccent,
          body: Center(

              child: Text("Hey There, Learning Flutter ",
                  style: TextStyle(fontSize: 50, color: Colors.black87)
              )
          ),
        )
    );
  }
}

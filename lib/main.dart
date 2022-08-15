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

            backgroundColor: Colors.green,

          appBar: AppBar(
            title: Text("Flutter Dev ",
                style: TextStyle(color: Colors.amberAccent)),
            leading: Icon(Icons.account_box, size: 28, color: Colors.pink,),
            backgroundColor: Colors.black,

          ),


          body:  Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.baseline

            mainAxisSize: MainAxisSize.max,
            children: [

              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),

                  color: Colors.amber,// container border

                  boxShadow: [
                    BoxShadow(color: Colors.pink, spreadRadius: 8,
                        // offset: Offset(12.2, 9.0)
                    ),
                  ],
                ),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text("L", style: TextStyle(color: Colors.pink, fontSize: 20), ) ,
              ),

              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,// container border
                ),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text("E", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.red,// container border
                ),
                width: 60,
                height: 60,
                // color: Colors.red,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text("A", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,// container border
                ),
                width: 60,
                height: 60,
                // color: Colors.red,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text("R", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.pink,// container border
                ),
                width: 60,
                height: 60,
                // color: Colors.red,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text("N", style: TextStyle(color: Colors.white, fontSize: 20),),
              )

            ],




          ),




        )
    );
  }
}

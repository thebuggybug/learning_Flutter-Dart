import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " My Application",
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Android Application"),
        ),

        // body: Stack(
        //   alignment: Alignment.center,
        //   textDirection: TextDirection.rtl,
        //   fit: StackFit.passthrough,
        //
        //
        //   children: [
        //     Center(
        //       child: Container(
        //         // alignment: ,
        //         height: 500,
        //         width: 350,
        //         color: Colors.green,
        //       ),
        //     ),
        //     Container(
        //       height: 450,
        //       width: 300,
        //       color: Colors.white,
        //     ),
        //     Container(
        //       height: 400,
        //       width: 250,
        //       color: Colors.redAccent,
        //     ),
        //
        //     Container(
        //       decoration: BoxDecoration(
        //           color: Colors.orangeAccent,
        //           borderRadius: BorderRadius.circular(50)
        //       ),
        //       height: 100,
        //       width: 100,
        //     ),
        //   ],
        // ),

        body: Center(
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(400),
                  color: Colors.orangeAccent,

                ),
                height: 300,
                width: 300,
                child: Center(
                  child: Text(
                    "HEY",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                // left: 0,
                right: 10,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      "Blue",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                ),
              ),
              Positioned(
                top: 10,
                // left: 0,
                left: 10,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "Red",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 10,
                // left: 0,
                right: 10,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      "Green",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 10,
                // left: 0,
                left: 10,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      "Purple",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

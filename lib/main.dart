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
        theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.red),
        title: "My application",
        home: Scaffold(
            backgroundColor: Colors.indigoAccent,
            appBar: AppBar(
              backgroundColor: Colors.red,
              centerTitle: true,
              title: Text("Demo App",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              leading: Icon(Icons.supervised_user_circle,
                  size: 40, color: Colors.greenAccent),
            ),
            body: Column(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.only(top: 20),
                    // padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(75),
                        border: Border.all(color: Colors.black, width: 4)),
                    child: Center(
                      child: (Text(
                        "R",
                        style: TextStyle(
                            fontSize: 75,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),

                //username
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.orangeAccent),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      enableSuggestions: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your name here",
                          icon: Icon(Icons.person)),
                    ),
                  ),
                ),

                //Password
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password here",
                          icon: Icon(Icons.password)),
                    ),
                  ),
                ),

                //Social Links
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.deepPurpleAccent),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Social Links",
                          icon: Icon(Icons.link)),
                    ),
                  ),
                ),

                // text button
                TextButton(
                  child: Text(
                    "Text Btn",
                    style: TextStyle(color: Colors.red),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {},
                ),

                ElevatedButton(
                    child: Text("Elevated Btn"),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    // style: ButtonStyle(backgroundColor: ),
                    onPressed: () {}),

                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Outline Btn",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                FloatingActionButton(
                  onPressed: () {},
                  // child: Text("Float"),
                  child: Icon(Icons.save),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),

                FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text("Float Extd"),
                  icon: Icon(Icons.save),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                )

                //Button
                // Container(
                //   height: 45,
                //   width: 200,
                //   margin: EdgeInsets.all(10),
                //   alignment: Alignment.center,
                //   decoration: BoxDecoration(
                //       // border: Border.all(),
                //       borderRadius: BorderRadius.circular(100),
                //       color: Colors.deepPurple),
                //   child: Center(
                //     child: Text(
                //       "Update",
                //       style:
                //           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                //     ),
                //   ),
                // ),

                // >> BUTTON ) Flat Button
              ],
            )));
  }
}

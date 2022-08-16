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
            title: Text("Android Application FORMS"),
          ),
          body: Forms()),
    );
  }
}

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: keys,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Provide Name",
                  labelText: "Name",
                  icon: Icon(
                    Icons.supervised_user_circle_outlined,
                    color: Colors.orange,
                  )),
              validator: (String? value) {
                if (value != null && value.isEmpty) {
                  return "Username can't be empty";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Your Password",
                  labelText: "Password",
                  icon: Icon(
                    Icons.password,
                    color: Colors.pink,
                  )),
              validator: (String? value) {
                if (value != null && value.isEmpty) {
                  return "Password can't be empty";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Social Handle here",
                  labelText: "Link",
                  icon: Icon(
                    Icons.link_rounded,
                    color: Colors.orange,
                  )),
              validator: (String? value) {
                if (value != null && value.isEmpty) {
                  return "LINKS can't be empty";
                }
                return null;
              },
            ),

            // issue
            // Container(
            //     child: OutlinedButton(
            //   onPressed: () {
            //     if(keys.currentState.validate())
            //       {
            //         Scaffold.of(context).showSnackBar(SnackBar(content: Text("Login"),));
            //       }
            //   },
            //   child: Text("Submit"),
            // ))
          ],
        ));
  }
}

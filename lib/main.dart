import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/aaron.dart';
import 'package:resume/forgotpass.dart';
import 'package:resume/joel.dart';
import 'package:resume/johncarlo.dart';
import 'package:resume/jomel.dart';
import 'package:resume/joseph.dart';

void main() {
  runApp(CupertinoApp(
    theme: CupertinoThemeData(brightness: Brightness.light),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool hidePassword = true;
  String error = "";
  String page = "";

  bool isLogin(String username, String password) {
    if (username == "Jc" && password == "Jc123") {
      setState(() {
        page = "jc";
      });
      return true;
    } else if (username == "Jomel" && password == "Jomel123") {
      setState(() {
        page = "jomel";
      });
      return true;
    } else if (username == "Joel" && password == "Joel123") {
      setState(() {
        page = "joel";
      });
      return true;
    } else if (username == "Joseph" && password == "Joseph123") {
      setState(() {
        page = "joseph";
      });
      return true;
    } else if (username == "Aaron" && password == "Aaron123") {
      setState(() {
        page = "aaron";
      });
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            'Code Bros',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: CupertinoColors.systemBlue),
          ),
          trailing: CupertinoButton(
              child: Icon(
                CupertinoIcons.person_2,
                size: 20,
              ),
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Team Members",
                                  style: TextStyle(
                                    color: CupertinoColors.black,
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                          ],
                        ),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Avendano, Aaron Jireh"),
                            Text("Basilio, Joseph Lee"),
                            Text("Dizon, Joel"),
                            Text("Dizon, John Carlo"),
                            Text("Simbillo, Jomel"),
                          ],
                        ),
                        actions: [
                          CupertinoButton(
                              child: Text(
                                'Close',
                                style: TextStyle(
                                    color: CupertinoColors.destructiveRed),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              })
                        ],
                      );
                    });
              }),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 145,
                ),
                Row(
                  children: [
                    Text(
                      'Profile Portal',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.systemBlue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CupertinoTextField(
                  placeholder: "Username",
                  controller: _username,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: CupertinoColors.systemFill,
                      width: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CupertinoTextField(
                  placeholder: "Password",
                  controller: _password,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: CupertinoColors.systemFill,
                      width: 1,
                    ),
                  ),
                  suffix: CupertinoButton(
                      child: Icon(
                        hidePassword
                            ? CupertinoIcons.eye
                            : CupertinoIcons.eye_slash,
                        color: CupertinoColors.systemGrey,
                      ),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      }),
                  obscureText: hidePassword,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: CupertinoColors.systemPurple,
                      borderRadius: BorderRadius.circular(10)),
                  child: CupertinoButton(
                      child: Text(
                        "Login",
                        style:
                            TextStyle(color: CupertinoColors.systemBackground),
                      ),
                      onPressed: () {
                        if (isLogin(_username.text, _password.text)) {
                          print(page);
                          switch (page) {
                            case 'jc':
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => JcPage()));
                              break;
                            case 'jomel':
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => JomelPage()));
                              break;
                            case 'aaron':
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => AaronPage()));
                              break;
                            case 'joel':
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => JoelPage()));
                              break;
                            case 'joseph':
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => JosephPage()));
                              break;
                          }
                        } else {
                          setState(() {
                            _username.text = "";
                            _password.text = "";
                            error = "Invalid username or password";
                          });
                        }
                      }),
                ),
                SizedBox(
                  height: 5,
                ),
                CupertinoButton(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.purpleAccent),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => ForgotPass()));
                    }),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "$error",
                  style: TextStyle(color: CupertinoColors.destructiveRed),
                ),
              ],
            ),
          ),
        ));
  }
}

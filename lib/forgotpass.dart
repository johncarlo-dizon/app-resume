import 'package:flutter/cupertino.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  TextEditingController _username = TextEditingController();

  String userpassword = "";
  String username = "";
  String usermessage = "";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "Code Bros",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: CupertinoColors.systemBlue,
                fontSize: 15),
          ),
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
                      'Forgot Password?',
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
                  controller: _username,
                  padding: EdgeInsets.all(15),
                  placeholder: "Enter username for password",
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
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: CupertinoColors.systemPurple,
                      borderRadius: BorderRadius.circular(10)),
                  child: CupertinoButton(
                      child: Text(
                        "Show password",
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          username = _username.text;
                          if (_username.text == "Jc") {
                            userpassword = "Jc123";
                            usermessage = "$username password is ";
                          } else if (_username.text == "Jomel") {
                            userpassword = "Jomel123";
                            usermessage = "$username password is ";
                          } else if (_username.text == "Joseph") {
                            userpassword = "Joseph123";
                            usermessage = "$username password is ";
                          } else if (_username.text == "Joel") {
                            userpassword = "Joel123";
                            usermessage = "$username password is ";
                          } else if (_username.text == "Aaron") {
                            userpassword = "Aaron123";
                            usermessage = "$username password is ";
                          } else {
                            usermessage = "User did not exist";
                            username = "";
                          }
                        });
                      }),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$usermessage",
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                    Text(
                      "$userpassword",
                      style: TextStyle(
                          color: CupertinoColors.systemBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

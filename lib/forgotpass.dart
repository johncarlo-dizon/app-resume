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
        ));
  }
}

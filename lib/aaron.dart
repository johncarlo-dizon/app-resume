import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/main.dart';


class AaronPage extends StatefulWidget {
  const AaronPage({super.key});

  @override
  State<AaronPage> createState() => _AaronPageState();
}

class _AaronPageState extends State<AaronPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

        navigationBar: CupertinoNavigationBar(
            middle: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.systemBlue),),


            leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.arrow_left_circle, size: 25,), onPressed: (){
              showCupertinoDialog(context: context, builder: (context){
                return CupertinoAlertDialog(
                  content: Column(
                    children: [
                      Text("Are you sure you want to log out?"),
                    ],
                  ),
                  actions: [

                    CupertinoDialogAction(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("Close", style: TextStyle(color: CupertinoColors.destructiveRed),)),

                    CupertinoDialogAction(
                          onPressed: (){
                            Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(
                                builder: (context) => MyApp()), (Route <dynamic> route) => false,);
                          },
                          child: Text("Logout", style: TextStyle(color: Colors.blue),)),

                  ],
                );
              });
            })



        ),


      
  }
}

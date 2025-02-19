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


  bool isLogin (String username, String password){

    if(username == "Jc" && password == "Jc123"){
      setState(() {
        page = "jc";
      });
      return true;
    }else if(username == "Jomel" && password == "Jomel123"){
      setState(() {
      page = "jomel";
      });
      return true;
    }else if(username == "Joel" && password == "Joel123"){
      setState(() {
      page = "joel";
      });
      return true;
    }else if(username == "Joseph" && password == "Joseph123"){
      setState(() {
      page = "joseph";
      });
      return true;
    }else if(username == "Aaron" && password == "Aaron123"){
      setState(() {
      page = "aaron";
      });
      return true;
    }else{
      return false;
    }


  }


  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        navigationBar: CupertinoNavigationBar(

          middle: Text('Code Bros', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: CupertinoColors.systemBlue),),
          
          
          
          trailing: CupertinoButton(child: Icon(CupertinoIcons.person_2, size: 20,), onPressed: (){
              showCupertinoDialog(context: context, builder: (context){
                return CupertinoAlertDialog(

                  title: Column(
                    children: [
                      Row(
                        children: [
                          Text("Team Members", style: TextStyle(color: CupertinoColors.black,),),
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

                      CupertinoButton(child: Text('Close', style: TextStyle(color: CupertinoColors.destructiveRed),),
                          onPressed: (){
                              Navigator.pop(context);
                          })

                  ],
                );


              });
          }),
        ),
        
        


  }
}

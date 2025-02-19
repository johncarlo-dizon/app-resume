import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/main.dart';

class JoelPage extends StatefulWidget {
  const JoelPage({super.key});

  @override
  State<JoelPage> createState() => _JoelPageState();
}

class _JoelPageState extends State<JoelPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            middle: Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.systemBlue),
            ),
            leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(
                  CupertinoIcons.arrow_left_circle,
                  size: 25,
                ),
                onPressed: () {
                  showCupertinoDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          content: Column(
                            children: [
                              Text("Are you sure you want to log out?"),
                            ],
                          ),
                          actions: [
                            CupertinoDialogAction(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Close",
                                  style: TextStyle(
                                      color: CupertinoColors.destructiveRed),
                                )),
                            CupertinoDialogAction(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => MyApp()),
                                    (Route<dynamic> route) => false,
                                  );
                                },
                                child: Text(
                                  "Logout",
                                  style: TextStyle(color: Colors.blue),
                                )),
                          ],
                        );
                      });
                })),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            'images/joel.png',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Align(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Joel Dizon",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: CupertinoColors.systemBlue),
                                    ),
                                  ],
                                ),
                                Divider(),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.mail,
                                  size: 18,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "joeldizon@gmail.com",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.number,
                                  size: 18,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "(+63) 958-324-4256",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.globe,
                                  size: 18,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "www.codebros.com",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //EDUCATION
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Icon(
                            CupertinoIcons.book,
                            color: Colors.deepPurple,
                            size: 19,
                          ),
                          onPressed: () {
                            showCupertinoDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: Text(
                                      'Education',
                                      style: TextStyle(
                                          color: CupertinoColors.systemBlue),
                                    ),
                                    content: Column(
                                      children: [
                                        Text(
                                          "Bachelor of Science in Information Technology",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "Holy Cross College, 2022 - Present"),
                                      ],
                                    ),
                                    actions: [
                                      CupertinoButton(
                                          child: Text(
                                            'Close',
                                            style: TextStyle(
                                                color: CupertinoColors
                                                    .destructiveRed),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          })
                                    ],
                                  );
                                });
                          }),

                      //SKILLS
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Icon(
                            CupertinoIcons.star,
                            color: Colors.deepPurple,
                            size: 19,
                          ),
                          onPressed: () {
                            showCupertinoDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: Text(
                                      'Education',
                                      style: TextStyle(
                                          color: CupertinoColors.systemBlue),
                                    ),
                                    content: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Programming Language:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "- PHP, Python, JavaScript, C#, C++"),
                                        Text(
                                          "Frameworks:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "- CodeIgniter 4, Bootstrap 5, Express"),
                                        Text(
                                          "Database:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("- MySQL, SQL"),
                                      ],
                                    ),
                                    actions: [
                                      CupertinoButton(
                                          child: Text(
                                            'Close',
                                            style: TextStyle(
                                                color: CupertinoColors
                                                    .destructiveRed),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          })
                                    ],
                                  );
                                });
                          }),

                      //CONTACT
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Icon(
                            CupertinoIcons.phone,
                            color: Colors.deepPurple,
                            size: 19,
                          ),
                          onPressed: () {
                            showCupertinoDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: Text(
                                      'Contact',
                                      style: TextStyle(
                                          color: CupertinoColors.systemBlue),
                                    ),
                                    content: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Facebook:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("- Joel Dizon"),
                                        Text(
                                          "Tiktok:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("- Joelzkie"),
                                        Text(
                                          "Github:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("- Joel-Dizon"),
                                      ],
                                    ),
                                    actions: [
                                      CupertinoButton(
                                          child: Text(
                                            'Close',
                                            style: TextStyle(
                                                color: CupertinoColors
                                                    .destructiveRed),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          })
                                    ],
                                  );
                                });
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

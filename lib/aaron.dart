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
                            'images/aaron.jpg',
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
                                      "Aaron Jireh Avendano",
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
                                  "ajaven@gmail.com",
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
                                  "(+63) 944-324-5243",
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
                                        Text("- Aaron Jireh Avendano"),
                                        Text(
                                          "Tiktok:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("- ajavendano"),
                                        Text(
                                          "Github:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("- Aaronjireh"),
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

                  //PROFESSIONAL SUMMARRY
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Professional Summary",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.systemBlue),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Flexible(
                          child: Text(
                        "Currently pursuing a Bachelor of Science in Information Technology, I am proficient in creating mobile applications with Flutter and Dart, as well as web solutions using PHP, CodeIgniter 4, Bootstrap 5, JavaScript, and SQL. I also have experience with Windows Forms applications in C#. I’m actively seeking part-time roles or freelance work to apply my knowledge and grow professionally",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      )),
                    ],
                  ),

                  //WORK EXPERIENCE
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        "Work Experience",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.systemBlue),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Flexible(
                          child: Text(
                        "I was responsible for developing and maintaining web applications utilizing PHP, JavaScript, and several PHP frameworks. Collaborating with cross-functional teams, I designed and integrated new features while ensuring seamless functionality. I also worked with MySQL and SQL databases to manage data effectively and meet application requirements.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      )),
                    ],
                  ),

                  //Portfolio
                  SizedBox(height: 30),

                  Row(
                    children: [
                      Text(
                        "Portfolio",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.systemBlue),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        "Here is one of the project I have worked on :",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  Divider(),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceEvenly, // Space out the items evenly
                    children: [
                      // First Container
                      Flexible(
                        flex:
                            1, // You can adjust the flex values to change the weight of each container
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 50.0, // Minimum height
                            maxHeight: 100.0, // Maximum height
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "images/S2.jpeg",
                            height: MediaQuery.of(context).size.width *
                                0.3, // Adjust image height based on screen width
                            width: MediaQuery.of(context).size.width *
                                0.3, // Adjust image width based on screen width
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // Second Container
                      Flexible(
                        flex: 1,
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 50.0,
                            maxHeight: 100.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "images/S3.jpeg",
                            height: MediaQuery.of(context).size.width * 0.3,
                            width: MediaQuery.of(context).size.width * 0.3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceEvenly, // Space out the items evenly
                    children: [
                      // First Container
                      Flexible(
                        flex:
                            1, // You can adjust the flex values to change the weight of each container
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 50.0, // Minimum height
                            maxHeight: 100.0, // Maximum height
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "images/S4.jpeg",
                            height: MediaQuery.of(context).size.width *
                                0.3, // Adjust image height based on screen width
                            width: MediaQuery.of(context).size.width *
                                0.3, // Adjust image width based on screen width
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // Second Container
                      Flexible(
                        flex: 1,
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 50.0,
                            maxHeight: 100.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "images/S5.jpeg",
                            height: MediaQuery.of(context).size.width * 0.3,
                            width: MediaQuery.of(context).size.width * 0.3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

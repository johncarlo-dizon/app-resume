import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/main.dart';

class JosephPage extends StatefulWidget {
  const JosephPage({super.key});

  @override
  State<JosephPage> createState() => _JosephPageState();
}

class _JosephPageState extends State<JosephPage> {
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
                            'images/joseph.jpg',
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
                                      "Joseph Lee Basilio",
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
                                  "jlee@gmail.com",
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
                                  "(+63) 933-324-4242",
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
                                        Text("- Joseph Lee Basilio"),
                                        Text(
                                          "Tiktok:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("- jlb"),
                                        Text(
                                          "Github:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("- joseph-lee"),
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
                        "I’m a third-year Bachelor of Science in Information Technology student with "
                        "a strong background in mobile app development using Flutter and Dart, "
                        "web development with PHP, CodeIgniter 4, Bootstrap 5, JavaScript, and SQL"
                        ", and Windows Forms applications in C#. I’m eager to explore part-time or"
                        " freelance opportunities that will allow me to apply and enhance my skills",
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
                        "With experience in developing and maintaining web applications using PHP, JavaScript, and multiple PHP frameworks, I collaborated with cross-functional teams to create and implement new features. My role also involved working with MySQL and SQL databases to ensure efficient data management and support the application’s requirements.",
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

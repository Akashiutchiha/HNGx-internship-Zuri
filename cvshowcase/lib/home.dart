import 'package:cvshowcase/component.dart';
import 'package:cvshowcase/editScreen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class Home extends StatefulWidget {
  Home();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String Bio =
      "I'm a student at the University of Bamenda, studying Computer Engineering. I'm a passionate developer, and I love to learn new things.";

  String fullname = "Ndongmo Nguimfack Christian";

  String slackUsername = "goldenbrain001";

  String githubHandle = "https://github.com/Akashiutchiha";

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      fullname = fullname;
      slackUsername = slackUsername;
      githubHandle = githubHandle;
      Bio = Bio;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 4, 58),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final result = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return Edit(
                  fullName: fullname,
                  slackName: slackUsername,
                  githubHandle: githubHandle,
                  bio: Bio);
            }));
            if (!mounted) {
              return;
            }
            if (result != null) {
              print(result.runtimeType);
              print(result);
              setState(() {
                fullname = result["fullname"];
                slackUsername = result["slackUsername"];
                githubHandle = result["githubHandle"];
                Bio = result["bio"];
              });
            }
          },
          backgroundColor: Colors.white,
          child: const Icon(Icons.edit),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('CV Showcase',
              style: TextStyle(fontWeight: FontWeight.w500)),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyComponent(
                title: 'Full Name',
                content: fullname,
              ),
              MyComponent(
                title: 'Slack Username',
                content: slackUsername,
              ),
              MyComponent(
                title: 'GitHub Handle',
                content: githubHandle,
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bio',
                        style: TextStyle(
                            color: kTextColor, fontWeight: FontWeight.w500)),
                    Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 8, 4, 58),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 253, 252, 253)
                                  .withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 0,
                            ),
                          ],
                        ),
                        child: Text(
                          Bio,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 20,
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

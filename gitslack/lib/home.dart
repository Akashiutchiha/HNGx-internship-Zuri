import 'package:flutter/material.dart';
import 'package:gitslack/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // Future<void> _launchURLApp() async {
  @override
  Widget build(BuildContext context) {
    Uri website = Uri.parse("https://github.com/Akashiutchiha");

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 4, 43),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                backgroundImage: AssetImage('assets/profilepic.jpg'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Ndongmo Christian',
              style: TextStyle(
                fontSize: 30,
                color: ktextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              child: Container(
                margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
                color: ktextColor,
                height: 0.5,
                width: double.infinity,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 20,
                color: ktextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 20,
              ),
            ),
            Container(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      launchUrl(website, mode: LaunchMode.inAppWebView);
                    });
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Open Github",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.open_in_new),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

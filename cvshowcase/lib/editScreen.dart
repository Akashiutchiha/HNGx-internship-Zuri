import 'package:cvshowcase/myTextField.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit(
      {Key? key,
      required this.fullName,
      required this.slackName,
      required this.githubHandle,
      required this.bio})
      : super(key: key);

  final String fullName;
  final String slackName;
  final String githubHandle;
  final String bio;

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController fullname = TextEditingController();
  TextEditingController slackUsername = TextEditingController();
  TextEditingController githubHandle = TextEditingController();
  TextEditingController bio = TextEditingController();

  @override
  void initState() {
    super.initState();
    fullname.text = widget.fullName;
    slackUsername.text = widget.slackName;
    githubHandle.text = widget.githubHandle;
    bio.text = widget.bio;
    print(widget.fullName);
    print(widget.slackName);
    print(widget.githubHandle);
    print(widget.bio);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 4, 58),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Edit CV', style: TextStyle(fontWeight: FontWeight.w500)),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                ),
              ),
              MyTextField('Full Name', fullname),
              MyTextField('Slack Name', slackUsername),
              MyTextField('Github Handle', githubHandle),
              MyTextField('Bio', bio),
              Expanded(child: Spacer()),
              Expanded(
                child: Container(
                  //I want to have a cool button displaying "Save" here
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, {
                        "fullname": fullname.text,
                        "slackUsername": slackUsername.text,
                        "githubHandle": githubHandle.text,
                        "bio": bio.text,
                      });
                    },
                    child: Text('Save'),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ));
    ;
  }
}

// rR

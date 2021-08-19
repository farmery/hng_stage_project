import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  late TextEditingController textEditingController;

  String output = '';

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/logo.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/zuri.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      height: 70,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/i4g.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                SizedBox(height: 32),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    launch('https://hng.tech/');
                  },
                  child: Text('https://hng.tech/',
                      style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
                SizedBox(height: 32),
                Text(
                  'Enter a Text',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(height: 24),

                //full name
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                SizedBox(height: 16),
                Align(
                    alignment: Alignment.centerRight,
                    child: CupertinoButton.filled(
                        borderRadius: BorderRadius.circular(30),
                        child: Text('Submit'),
                        onPressed: () {
                          setState(() {
                            output = textEditingController.value.text;
                          });
                        })),

                Text(output, style: TextStyle(fontSize: 18))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

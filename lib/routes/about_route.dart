import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tile_to_do/app_drawer.dart';

class AboutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About"),
          backgroundColor: Colors.amber,
          elevation: 0,
        ),
        backgroundColor: Colors.amber,
        body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      "TileToDo is a very simple task managing app with open source code",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 20)),
                ),
                Divider(color: Colors.white,indent: 15,endIndent:15,thickness: 5,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      "Check out my Github page",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20)),
                ),
                MaterialButton(onPressed: ()=>{launchGitHub()},child: Image.asset("lib/assets/github.png"),)
              ],
            )));
  }
}
void launchGitHub() async {
  var URL=Uri.parse("https://www.youtube.com/watch?v=dQw4w9WgXcQ");

  if (!await launchUrl(URL)) throw 'Could not launch $URL';
}

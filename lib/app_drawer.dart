import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  var mainColor=Colors.white;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.blue,
          child: Column(
            children:
            [
              DrawerHeader(child:Center(
                child: Text("TileToDo",style: TextStyle(
                  fontSize: 50,
                  color: mainColor
                ),),
              )),

              ListTile(leading: Icon(Icons.text_snippet),
                  title: Text("About the app"),
                  textColor: mainColor,iconColor: mainColor,
                  onTap:()=>Navigator.pushNamed(context, "/about")),

              ListTile(leading: Icon(Icons.question_mark),
                  title: Text("How to use"),
                  textColor: mainColor,
                  iconColor: mainColor,
                  onTap: ()=>Navigator.pushNamed(context, "/how"),
              ),

              ListTile(leading: Icon(Icons.edit),
                  title: Text("Settings"),
                  textColor: mainColor,
                  iconColor: mainColor)
            ],
      ),
    ));
  }
}

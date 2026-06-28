import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    final imageUrl = "https://play-lh.googleusercontent.com/4zePuvGz1KuIbeZnjyZhjuc4eiUTwOwdLvpHLh0hYe1n8jemIpEVIqnwLvH8ted6dGTUJs9K4f18S_Zl7WhCFEM";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,

              child: UserAccountsDrawerHeader(
  margin: EdgeInsets.zero,
  decoration: BoxDecoration(color: Colors.deepPurple), 
  accountName: Text("Saad Mohammad", style: TextStyle(color: Colors.white)), 
  accountEmail: Text("saad.cuiatd@gmail.com", style: TextStyle(color: Colors.white)),
  currentAccountPicture: CircleAvatar(
    backgroundImage: AssetImage('assets/images/saad.jpg'),
  ),
)
            ),

                   ListTile(
                    leading: Icon(CupertinoIcons.home,color: Colors.white,),
                    title: Text("Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.white
                    ),
                    ),
                   ),

                            ListTile(
                    leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                    title: Text("profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.white
                    ),
                    ),
                   ),

                              ListTile(
                    leading: Icon(CupertinoIcons.mail,color: Colors.white,),
                    title: Text("Email",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.white
                    ),
                    ),
                   ),



          ],
        ),
      ),
    );
  }
}

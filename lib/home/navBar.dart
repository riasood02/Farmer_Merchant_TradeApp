import 'package:farmer_merchant/home/account.dart';
import 'package:farmer_merchant/home/apmc.dart';
import 'package:farmer_merchant/home/loan.dart';

import 'package:farmer_merchant/services/auth.dart';
import 'package:flutter/material.dart';


import 'home.dart';

class NavBar extends StatelessWidget {
   NavBar({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<FarmerData?>(context);
    // final user1 = Provider.of<FUser?>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            accountName: Text(""),
            accountEmail: Text(""),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/farmers.PNG',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('APMC'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => APMC(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Loan'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Loan(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Account'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Account(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_sharp),
            title: Text('logout'),
            onTap: () async{
              await _auth.signOut();
            },
          ),
          // FlatButton.icon(
          //     onPressed:() async{
          //       await _auth.signOut();
          //     },
          //     icon: Icon(Icons.logout_sharp,color: Colors.white),
          //     label: Text("logout",
          //       style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}

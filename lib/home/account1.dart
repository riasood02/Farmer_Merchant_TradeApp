



import 'package:farmer_merchant/models/farmer_user.dart';
import 'package:farmer_merchant/services/User_Database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'navBar1.dart';

class Account1 extends StatefulWidget {
  const Account1({Key? key}) : super(key: key);

  @override
  _Account1State createState() => _Account1State();
}

class _Account1State extends State<Account1> {

  //TextEditingController _controller1 = new TextEditingController();
  String fullname="";
  String em="";
  String phno="";
  String state="";
  String city="";

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FUser?>(context);
    return StreamBuilder<MerchantData?>(

    stream: DatabaseService(email:user!.email!,uid: user.uid!,user_type: user.usertype!).merchantInfo,
    builder: (context,snapshot) {

    MerchantData? merchantData = snapshot.data;

    return Scaffold(
            drawer: NavBar1(),
            appBar: AppBar(
              // leading: IconButton(
              //   icon: Icon(
              //     Icons.arrow_back,
              //     color: Colors.white,
              //   ),
              //   onPressed: () {
              //     setState(() {
              //       Navigator.pop(context);
              //     });
              //   },
              // ),
              title: Text('Account'),
              backgroundColor: Colors.black,
            ),
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: ListView(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'PERSONAL INFORMATION',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'Full Name',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      controller: TextEditingController(text: merchantData?.fullname),
                      onChanged: (val) {setState(() {
                        fullname=val;
                      });},
                      decoration:
                      InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                        // labelText: labelText,
                        // labelStyle: TextStyle(
                        //   fontSize: 16,
                        // ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(35.0))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius:
                          BorderRadius.all(Radius.circular(35.0)),
                        ),

                      ),

                    ),
                    SizedBox(height: 20),
                    Text(
                      'Email',

                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(

                      controller: TextEditingController(text: merchantData?.email),
                      onChanged: (val) {setState(() {
                        em=val;
                      });},

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                        // labelText: labelText,
                        // labelStyle: TextStyle(
                        //   fontSize: 16,
                        // ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "email",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(35.0))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.grey),
                          borderRadius:
                          BorderRadius.all(Radius.circular(35.0)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      controller: TextEditingController(text:merchantData?.phno),
                      onChanged: (val){setState(() {
                        phno=val;
                      });},
                      decoration:
                      InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                        // labelText: labelText,
                        // labelStyle: TextStyle(
                        //   fontSize: 16,
                        // ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Enter Phone number',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(35.0))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius:
                          BorderRadius.all(Radius.circular(35.0)),
                        ),

                      ),

                    ),

                    SizedBox(height: 20),
                    Text(
                      'State',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      controller: TextEditingController(text: merchantData?.state),
                      onChanged: (val){setState(() {
                        state=val;
                      });},
                      decoration:
                      InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                        // labelText: labelText,
                        // labelStyle: TextStyle(
                        //   fontSize: 16,
                        // ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'state',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(35.0))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius:
                          BorderRadius.all(Radius.circular(35.0)),
                        ),

                      ),

                    ),
                    SizedBox(height: 20),
                    Text(
                      'City',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      controller: TextEditingController(text: merchantData?.city),
                      onChanged: (val){setState(() {
                        city=val;
                      });},
                      decoration:
                      InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                        // labelText: labelText,
                        // labelStyle: TextStyle(
                        //   fontSize: 16,
                        // ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "city",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(35.0))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius:
                          BorderRadius.all(Radius.circular(35.0)),
                        ),

                      ),

                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.black,
                      onPressed: () {},
                      child: Text('SAVE',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          );}
                );

  }
}

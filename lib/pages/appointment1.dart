import 'dart:io';
import 'package:face_net_authentication/pages/Hospital1.dart';
import 'package:face_net_authentication/pages/booklist.dart';
import 'package:face_net_authentication/pages/myphone.dart';
import 'package:face_net_authentication/pages/profile.dart';
import 'package:face_net_authentication/pages/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Appointment1 extends StatelessWidget {
  const Appointment1({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                'Your appointments',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 201, 195, 201),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Divider(
                      height: 10,
                    ),
                    Text(
                      "Appointment -1 Dr.Dre",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      height: 10,
                    ),
                    Text(
                      'Date:26/04/2023     Time :9:00am to 10:00am',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.1),
                              blurRadius: 1,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Completed',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FaIcon(
                              FontAwesomeIcons.check,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 201, 195, 201),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Divider(
                      height: 10,
                    ),
                    Text(
                      "Appointment -2 Dr.Dre",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      height: 10,
                    ),
                    Text(
                      'Date:30/04/2023     Time :11:00am to 12:00pm',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.1),
                              blurRadius: 1,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Completed',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FaIcon(
                              FontAwesomeIcons.check,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Container(
                child:FloatingActionButton(
                  elevation: 20,
                  child: FaIcon(FontAwesomeIcons.home),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Booklist(imagepath: '',)));
                  },
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

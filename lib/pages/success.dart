import 'dart:io';
import 'package:face_net_authentication/pages/Hospital1.dart';
import 'package:face_net_authentication/pages/booklist.dart';
import 'package:face_net_authentication/pages/profile.dart';
import 'package:face_net_authentication/pages/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class success extends StatelessWidget {
  const success({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    // color: Colors.black,
                    // image: DecorationImage(
                    // fit: BoxFit.cover,
                    // image: FileImage(File(imagepath)),
                    // ),
                    // ),
                    margin: EdgeInsets.all(15),
                    width: 60,
                    height: 80,
                  ),
                ],
              ),
              Text(
                'Congratulations !',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 0,
              ),
              Center(
                child: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_svaw8skx.json'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your Appointment is Booked',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'at 9am to 10am',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 110,
              ),
              AppButton(
                text: "GO BACK",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hospital1()),
                  );
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                color: Color.fromARGB(255, 33, 29, 29),
              ),
              SizedBox(
                height: 10,
              )
            ], 
          ),
        ),
      ),
    );
  }
}

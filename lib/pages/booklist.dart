import 'dart:io';
import 'package:face_net_authentication/pages/Hospital1.dart';
import 'package:face_net_authentication/pages/booklist.dart';
import 'package:face_net_authentication/pages/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';

class Booklist extends StatelessWidget {
  const Booklist({Key? key, required this.imagepath});
  final String imagepath;
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
                    margin: EdgeInsets.all(18),
                    width: 26,
                    height: 100,
                  ),
                  Text(
                    'Book Your Appointment 🏥',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              AppButton(
                text: "Hospital1",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hospital1()),
                  );
                },
                icon: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                color: Color.fromARGB(255, 33, 29, 29),
              ),
              SizedBox(
                height: 50,
              ),
              AppButton(
                text: "Hospital2",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hospital1()),
                  );
                },
                icon: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                color: Color.fromARGB(255, 33, 29, 29),
              ),
              SizedBox(
                height: 50,
              ),
              AppButton(
                text: "Hospital 3",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hospital1()),
                  );
                },
                icon: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                color: Color.fromARGB(255, 33, 29, 29),
              ),
              SizedBox(
                height: 50,
              ),
              AppButton(
                text: "Hospital 4",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hospital1()),
                  );
                },
                icon: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                color: Color.fromARGB(255, 33, 29, 29),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:io';
import 'package:face_net_authentication/pages/Hospital1.dart';
import 'package:face_net_authentication/pages/appointment.dart';
import 'package:face_net_authentication/pages/booklist.dart';
import 'package:face_net_authentication/pages/doctime.dart';
import 'package:face_net_authentication/pages/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';

class Hospital1 extends StatelessWidget {
  const Hospital1({Key? key});
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
                    'Select Your Doctor 👨‍⚕️',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              AppButton(
                text: "Doc 1 (General practitioner)",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DocTime()),
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
                text: "Doc 2 (Neurologist)",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DocTime()),
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
                text: "Doc 3 (Dermatologist)",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DocTime()),
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
                text: "Doc 4 (Cardiologist)",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DocTime()),
                  );
                },
                icon: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                color: Color.fromARGB(255, 33, 29, 29),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 201, 195, 201),
                borderRadius: BorderRadius.circular(10),
                ), 
                child:FloatingActionButton(
                  child: FaIcon(FontAwesomeIcons.bookMedical),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Appointment()));
                  },
                )
              ),
              Text('Your Appointments'),
            ],
          ),
        ),
      ),
    );
  }
}

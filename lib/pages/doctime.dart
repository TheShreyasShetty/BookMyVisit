import 'dart:io';
import 'package:face_net_authentication/pages/Hospital1.dart';
import 'package:face_net_authentication/pages/booklist.dart';
import 'package:face_net_authentication/pages/success.dart';
import 'package:face_net_authentication/pages/widgets/app_button.dart';
import 'package:face_net_authentication/pages/widgets/success2.dart';
import 'package:face_net_authentication/pages/widgets/success3.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_date_picker_timeline/flutter_date_picker_timeline.dart';

class DocTime extends StatelessWidget {
  const DocTime({Key? key});
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
                    width: 20,
                    height: 120,
                  ),
                  Text(
                    'Select Your Schedule 🕛',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 11, bottom: 11),
                    decoration: BoxDecoration(color: Colors.white),
                    child: FlutterDatePickerTimeline(
                      startDate: DateTime(2023, 05, 06),
                      endDate: DateTime(2030, 12, 30),
                      initialSelectedDate: DateTime(2023, 05, 06), 
                      onSelectedDateChange: (DateTime? date) {  },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
                // child: CupertinoDatePicker(
                // minimumDate: DateTime.now(),
                // mode: CupertinoDatePickerMode.date,
                // initialDateTime: DateTime(2023,5,23),
                // onDateTimeChanged: (DateTime newDateTime){},
                // ),
              ),
              SizedBox(
                height: 40,
              ),
              AppButton(
                text: "9:00am - 10:00am",
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Book your slot ?'),
                    content: const Text(
                        'You are not going to book an appointment for 9-10 am. Make sure once booked actions cannot be revoked again !'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => success()),
                          );
                        },
                        child: const Text('Book now'),
                      ),
                    ],
                  ),
                ),
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
                text: "10:00am - 11:00am (rounds)",
                onPressed: null,
                icon: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                color: Color.fromARGB(57, 46, 40, 25),
              ),
              SizedBox(
                height: 50,
              ),
              AppButton(
                text: "12:00pm - 1:00pm",
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Book your slot ?'),
                    content: const Text(
                        'You are not going to book an appointment for 12-1 pm. Make sure once booked actions cannot be revoked again !'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => success2()),
                          );
                        },
                        child: const Text('Book now'),
                      ),
                    ],
                  ),
                ),
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
                text: "1:00pm - 2:00pm (Lunch break)",
                onPressed: null,
                icon: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                color: Color.fromARGB(57, 46, 40, 25),
              ),
              SizedBox(
                height: 50,
              ),
              AppButton(
                text: "3:00pm - 4:00pm",
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Book your slot ?'),
                    content: const Text(
                        'You are not going to book an appointment for 3-4 pm, Make sure once booked actions cannot be revoked again !'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => success3()),
                          );
                        },
                        child: const Text('Book now'),
                      ),
                    ],
                  ),
                ),
                icon: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                color: Color.fromARGB(255, 33, 29, 29),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

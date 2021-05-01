import 'package:flutter_application_1/models/doctors.dart';

import 'medicalreport.dart';

class User {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String dob;
  final String city;
  final String state;
  final String country;
  final List<MedicalReport> pictures;

  User({
    this.name,
    this.email,
    this.password,
    this.phone,
    this.dob,
    this.city,
    this.state,
    this.country,
    this.pictures,
  });

  List<User> getUSers() {
    return [
      User(
        name: 'User 1',
        email: 'user1@gmail.com',
        password: 'user1234',
        phone: '0000000000',
        dob: '01-04-1955',
        city: 'User1City',
        state: 'User1State',
        country: 'User1Country',
        pictures: [
          MedicalReport(
            bloodgroup: 'A+',
            healthstatus: 'Healthy',
            doctors: [
              Doctors(
                doctorname: 'doctor 1',
                email: 'doctor1email@gmail.com',
              )
            ],
          ),
        ],
      ),
      User(
        name: 'User 2',
        email: 'user2@gmail.com',
        password: 'user12345',
        phone: '0000000000',
        dob: '01-04-1956',
        city: 'User2City',
        state: 'User2State',
        country: 'User2Country',
        pictures: [
          MedicalReport(
            bloodgroup: 'B+',
            healthstatus: 'Healthy',
          ),
        ],
      ),
    ];
  }
}
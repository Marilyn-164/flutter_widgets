import 'package:flutter_application_1/models/doctors.dart';

class MedicalReport {
  final String bloodgroup;
  final String healthstatus;
  List<Doctors> doctors;

  MedicalReport({this.bloodgroup,this.healthstatus, this.doctors});
}
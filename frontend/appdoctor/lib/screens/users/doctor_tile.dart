import 'package:appdoctor/models/users/doctor_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({super.key, required this.doctor});

  final DoctorPreview doctor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Column(
            children: [
              Text(
                "${doctor.namePrefix} ${doctor.lastName} ${doctor.firstName}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

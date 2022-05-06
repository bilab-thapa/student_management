import 'package:flutter/material.dart';
import 'package:student_management/model/students.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  String? fname, lname, address;
  @override
  Widget build(BuildContext context) {
    List<Student> lstStudent = [
      Student(fname: 'Bilab', lname: 'Thapa', address: 'Kapan'),
      Student(fname: 'Juna', lname: 'GC', address: 'Kalopul'),
      Student(fname: 'Prince', lname: 'Mahato', address: 'Dillibazar')
    ];
    //const height = MediaQuery.of(context).
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Screen'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // for (int i = 0; i < lstStudent.length; i++)
              //   DisplayCard(lstStudent[i])
              ...lstStudent.map((e) => displayCard(e)).toList(),
            ],
          ),
        ));
  }
}

Widget displayCard(Student student) {
  return SizedBox(
    height: 200,
    width: double.infinity,
    child: Card(
      color: Colors.red.shade300,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child:
          Center(child: Text("Full name is ${student.fname} ${student.lname}")),
    ),
  );
}

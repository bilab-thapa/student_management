import 'package:flutter/material.dart';
import '/model/students.dart';

class StudentEntryScreen extends StatefulWidget {
  const StudentEntryScreen({Key? key}) : super(key: key);
  @override
  State<StudentEntryScreen> createState() => _StudentEntryScreenState();
}

class _StudentEntryScreenState extends State<StudentEntryScreen> {
  String? fname, lname, address;
  List<Student> lstStudent = [];
  _addStudent(Student student) {
    setState(() {
      lstStudent.add(student);
      // print(listStudent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'Student Resgistration',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(9),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    fname = value;
                  });
                },
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    lname = value;
                  });
                },
                decoration: const InputDecoration(labelText: 'Last Name'),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    address = value;
                  });
                },
                decoration: const InputDecoration(labelText: 'Address'),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    Student s =
                        Student(fname: fname, lname: lname, address: address);
                    _addStudent(s);
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/display',
                      arguments: lstStudent,
                    );
                  },
                  child: const Text(
                    'View Students',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../model/students.dart';

class StudentEntryScreen extends StatefulWidget {
  const StudentEntryScreen({Key? key}) : super(key: key);

  @override
  State<StudentEntryScreen> createState() => _StudentEntryScreenState();
}

class _StudentEntryScreenState extends State<StudentEntryScreen> {
  @override
  Widget build(BuildContext context) {
    String? fname, lname, batch, email;
    List<Student> listStudent = [];

    _addStudent(Student student) {
      setState(() {
        listStudent.add(student);
        print(listStudent.length);
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text(
          'Student Resgistration',
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) => fname,
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) => lname,
                decoration: const InputDecoration(labelText: 'Last Name'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) => batch,
                decoration: const InputDecoration(labelText: 'Batch'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) => email,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    Student s = Student(fname, lname, batch, email);
                    _addStudent(s);
                  },
                  child: const Text('Add'),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/display');
                  },
                  child: const Text('View Students'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../model/students.dart';

class StudentEntryScreen extends StatefulWidget {
  const StudentEntryScreen({Key? key}) : super(key: key);

  @override
  State<StudentEntryScreen> createState() => _StudentEntryScreenState();
}

class _StudentEntryScreenState extends State<StudentEntryScreen> {
  final _form = GlobalKey<FormState>();
  final fname = TextEditingController();
  final lname = TextEditingController();
  final batch = TextEditingController();
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // String? fname, lname, batch, email;
    List<Student> listStudent = [];

    _addStudent(Student student) {
      setState(() {
        listStudent.add(student);
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
          child: Form(
            key: _form,
            child: Column(
              children: [
                TextFormField(
                  controller: fname,
                  decoration: const InputDecoration(labelText: 'First Name'),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: lname,
                  decoration: const InputDecoration(labelText: 'Last Name'),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: batch,
                  decoration: const InputDecoration(labelText: 'Batch'),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: () {
                      _form.currentState!.save();
                      Student s = Student(
                          fname.text, lname.text, batch.text, email.text);
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
      ),
    );
  }
}

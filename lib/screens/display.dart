import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({Key? key}) : super(key: key);

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text('Details of Students'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'Fname',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Lname',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Batch',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Delete',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

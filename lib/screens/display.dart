import 'package:flutter/material.dart';
import '/model/students.dart';
import 'edit_details.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({Key? key}) : super(key: key);

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    List<Student> lstStudent =
        ModalRoute.of(context)!.settings.arguments as List<Student>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Details of Students'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
          separatorBuilder: ((context, index) => const Divider()),
          itemCount: lstStudent.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              tileColor: Colors.red.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Text(
                  lstStudent[index].fname! + ' ' + lstStudent[index].lname!),
              subtitle: Text(lstStudent[index].address!),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {
                      EditDetails();
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          lstStudent.remove(lstStudent[index]);
                        });
                      },
                      icon: const Icon(Icons.delete))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import '../../bloc/export.dart';

class AddPage extends StatelessWidget {
  AddPage({Key? key}) : super(key: key);

  final TextEditingController nameC = TextEditingController();
  final TextEditingController ageC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserBloc userB = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD USER"),
      ),
      body: ListView(
        children: [
          TextField(
            controller: nameC,
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: ageC,
            decoration: InputDecoration(
              labelText: "Age",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                userB.add(AddUserEvent(User(
                    id: Random().nextInt(99999),
                    name: nameC.text,
                    age: int.parse(ageC.text))));
                Navigator.pop(context);
              },
              child: Text("Add User"))
        ],
      ),
    );
  }
}

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
            controller: ageC,
            decoration: InputDecoration(
              labelText: "Age",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                userB.add(AddUserEvent());
              },
              child: Text("Add User"))
        ],
      ),
    );
  }
}

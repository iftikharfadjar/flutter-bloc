import 'package:flutter/material.dart';
import '../../bloc/export.dart';

class EditPage extends StatelessWidget {
  EditPage(this.user, {Key? key}) : super(key: key);

  final User user;

  final TextEditingController nameC = TextEditingController();
  final TextEditingController ageC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameC.text = user.name;
    ageC.text = user.age.toString();
    UserBloc userB = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text("EDIT USER"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          TextField(
            controller: nameC,
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
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
                userB.add(EditUserEvent(User(
                    id: user.id, name: nameC.text, age: int.parse(ageC.text))));
                Navigator.pop(context);
              },
              child: Text("Edit User"))
        ],
      ),
    );
  }
}

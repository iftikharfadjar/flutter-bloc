import '../user/edit.dart';
import 'package:flutter/material.dart';
import '../user/add.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All User")),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditPage()));
              },
              leading: CircleAvatar(
                child: Text(("${index + 1}")),
              ),
              title: Text("Nama User"),
              subtitle: Text("Umur User"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPage()));
        },
      ),
    );
  }
}

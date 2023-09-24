import 'package:bloc1/bloc/export.dart';

import '../user/edit.dart';
import 'package:flutter/material.dart';
import '../user/add.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userB = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text("ALL USERS"),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: userB,
        builder: (context, state) {
          if (state.allUsers.isEmpty) {
            return Center(
              child: Text("Data Empty"),
            );
          }
          return ListView.builder(
            itemCount: state.allUsers.length,
            itemBuilder: (context, index) {
              User user = state.allUsers[index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditPage(user),
                    ),
                  );
                },
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                title: Text(user.name),
                subtitle: Text("${user.age} tahun"),
                trailing: IconButton(
                  onPressed: () {
                    userB.add(DeleteUserEvent(user));
                  },
                  icon: Icon(Icons.delete),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

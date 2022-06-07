import 'package:flutter/material.dart';
import 'package:application/model.dart';

Widget buildUsers(List<User> users) => ListView.builder(
    itemCount: users.length,
    itemBuilder: (context, index) {
      final user = users[index];
      return Card(
          child: ListTile(
        title: Text(user.id.toString()),
      ));
    });

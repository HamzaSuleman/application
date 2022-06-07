// ignore_for_file: deprecated_member_use

import 'package:application/Api.dart';
import 'package:application/constants.dart';
import 'package:application/model.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<List<User>> userData = getUsers();
    //print(userData);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('PYTHON AND FLUTTER'),
          ), //AppBar

          body: Center(
            child: FutureBuilder<List<User>>(
                future: userData,
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    final users = snapshot.data!;
                    return buildUsers(users);
                  } else {
                    return const Text('No Users');
                  }
                })),
          ) // <Widget>[]

          ), // Scaffold
    ); // MaterialApp
  }
}
/*
 import 'package:flutter/material.dart';
import 'package:myapp/Api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String url = '';

  var Data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PYTHON AND FLUTTER'),
        ), //AppBar

        body: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: (value) {
                    url = 'http://127.0.0.1:5000/api?Query=' + value.toString();
                    print(value);
                  },
                  decoration: InputDecoration(
                      hintText: 'Search Anything Here',
                      suffixIcon: GestureDetector(
                          onTap: () async {
                            Data = await Getdata(Uri.parse(url));
                            // print(value);
                            print(Data);
                            var DecodedData = '';
                          },
                          child: const Icon(Icons.search))), // TextField
                )), //Padding

            const Padding(
              padding: EdgeInsets.all(10.0),

              child: Text(
                'QUERY',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ), //Text
            ), // Padding
          ], // <Widget>[]
        ), // Column
      ), // Scaffold
    ); // MaterialApp
  }
}
*/

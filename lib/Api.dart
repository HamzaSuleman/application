// ignore_for_file: file_names

import 'dart:convert';
import 'package:application/model.dart';
import 'package:http/http.dart' as http;

Future<List<User>> getUsers() async {
  //const url = 'https://fakestoreapi.com/products';
  const url = 'https://paklife-fitness-api.herokuapp.com';
  //const url = 'https://raw.githubusercontent.com/HamzaSuleman/Files/main/API';
  //const url = 'https://jsonplaceholder.typicode.com/posts';

  final response = await http.get(Uri.parse(url));
  final body = json.decode(response.body);

  return body.map<User>(User.fromJson).toList();
}

// import 'package:myapp/pages/login.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/login.dart';

void main() {
  runApp(
      MaterialApp(home: Login(), theme: ThemeData(primaryColor: Colors.green)));
}

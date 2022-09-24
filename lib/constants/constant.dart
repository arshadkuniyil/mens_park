import 'package:flutter/material.dart';

const TextStyle kTextStyle1 =
    TextStyle(fontWeight: FontWeight.w600, fontSize: 18);
const TextStyle kTextStyle2 =  TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 16,
);
const List<BoxShadow> kBoxShadow = [
  BoxShadow(
      offset: Offset(2, 2),
      blurRadius: 2,
      spreadRadius: 1,
      color: Color.fromARGB(84, 202, 202, 202)),
  BoxShadow(
      offset: Offset(-2, -2),
      blurRadius: 2,
      spreadRadius: 1,
      color: Color.fromARGB(82, 204, 204, 204)),
];
const List<BoxShadow> kBoxShadow2 = [
  BoxShadow(
      offset: Offset(.1, .1),
      blurRadius: .1,
      spreadRadius: .1,
      color: Color.fromARGB(84, 202, 202, 202)),
  BoxShadow(
      offset: Offset(-.1, -.1),
      blurRadius: .1,
      spreadRadius: .1,
      color: Color.fromARGB(82, 204, 204, 204)),
];

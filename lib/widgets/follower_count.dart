// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

Widget follower_count({required String num, required String name}) {
  return Column(
    children: [
      Text(
        num,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Text(
        name,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      )
    ],
  );
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget displayPicture() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/101089335?s=400&u=067a7acee712e15fd11b4104d185c00aff311ec4&v=4'),
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        "Sunny Khan",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Text(
        "Content Creator",
        style: TextStyle(fontSize: 14),
      ),
      SizedBox(
        height: 12,
      )
    ],
  );
}

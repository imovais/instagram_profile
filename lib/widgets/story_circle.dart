// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

Widget story_circle() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    
    child: CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(
          'https://avatars.githubusercontent.com/u/101089335?s=400&u=067a7acee712e15fd11b4104d185c00aff311ec4&v=4'),
    ),
  );
}

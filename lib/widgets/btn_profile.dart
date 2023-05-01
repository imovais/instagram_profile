// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

Widget btn_profile({required btn_name}) {
  return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade800, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          btn_name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ));
}

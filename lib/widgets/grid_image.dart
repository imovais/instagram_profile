// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget grid_image() {
  return Image.network(
      width: 10,
      height: 10,
      fit: BoxFit.cover,
      'https://images.pexels.com/photos/789822/pexels-photo-789822.jpeg?auto=compress&cs=tinysrgb&w=600');
}

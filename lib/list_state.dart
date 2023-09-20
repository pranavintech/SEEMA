import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecieversList extends StateNotifier {
  RecieversList()
      : super([
          {
            'name': 'Prithvi Rajput',
            "meter": '954564',
            'urja': '200',
          },
          {
            'name': 'Aryan Garg',
            "meter": '789564',
            'urja': '10',
          },
          {
            'name': 'Aryan Garg',
            "meter": '789564',
            'urja': '10',
          },
          {
            'name': 'Aryan Garg',
            "meter": '789564',
            'urja': '10',
          },
          {
            'name': 'Aryan Garg',
            "meter": '789564',
            'urja': '10',
          },
          {
            'name': 'Aryan Garg',
            "meter": '789564',
            'urja': '10',
          },
          {
            'name': 'Aryan Garg',
            "meter": '789564',
            'urja': '10',
          },
          {
            'name': 'Aryan Garg',
            "meter": '789564',
            'urja': '10',
          },
        ]);

  Widget toList() {
    return Column(
      children: state.map,
    );
  }
}

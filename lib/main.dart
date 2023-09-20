import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seema/states.dart';
import 'package:seema/wallet.dart';

final coinsProvider = StateNotifierProvider((ref) => UrjaCoins());
final provider = StateNotifierProvider((ref) => UrjaCoins());
void main() {
  final List<Map<String, String>> list = [
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
      'name': 'Pranav Arora',
      "meter": '789564',
      'urja': '1000',
    },
    {
      'name': 'Riddhima Hada',
      "meter": '342789617',
      'urja': '1000',
    },
    {
      'name': 'Bhavya Khanna',
      "meter": '102030409',
      'urja': '200',
    },
    {
      'name': 'Seema',
      "meter": '906901323',
      'urja': '102',
    },
    {
      'name': 'Shashank',
      "meter": '201030409',
      'urja': '25',
    },
    {
      'name': 'Rakhi Sawant',
      "meter": '901070109',
      'urja': '700',
    },
  ];
  runApp(
    ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 26, 119),
          ),
        ),
        home: Scaffold(
          // backgroundColor: Color.fromARGB(255, 242, 107, 139),
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text("S.E.E.M.A"),
          ),
          body: Wallet(list: list),
        ),
      ),
    ),
  );
}

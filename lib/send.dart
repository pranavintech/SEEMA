import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seema/main.dart';

class Send extends ConsumerWidget {
  const Send({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final urjaController = TextEditingController();
    final meterController = TextEditingController();
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 26, 119),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Send Urja'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                Row(
                  children: [
                    const Text("Meter: "),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: TextField(
                        controller: meterController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    const Text("URJA: "),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: TextField(
                        controller: urjaController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                OutlinedButton(
                  onPressed: () {
                    if (urjaController.text.isEmpty ||
                        (meterController.text.length < 6 ||
                            meterController.text.length > 6)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Invalid Fields")));
                      // Fluttertoast.showToast(
                      //     msg: "This is Center Short Toast",
                      //     toastLength: Toast.LENGTH_LONG,
                      //     gravity: ToastGravity.CENTER,
                      //     // timeInSecForIosWeb: 1,
                      //     backgroundColor: Colors.red,
                      //     textColor: Colors.white,
                      //     fontSize: 16.0);
                      Navigator.pop(context);
                      return;
                    }
                    final coins = int.parse(urjaController.text);
                    ref.read(coinsProvider.notifier).setCoins(coins);
                    // Fluttertoast.showToast(
                    //     msg: "This is Center Short Toast",
                    //     toastLength: Toast.LENGTH_LONG,
                    //     gravity: ToastGravity.CENTER,
                    //     // timeInSecForIosWeb: 1,
                    //     backgroundColor: Colors.red,
                    //     textColor: Colors.white,
                    //     fontSize: 16.0);
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Urja Send")));
                    Navigator.pop(context);
                  },
                  child: const Text("SEND"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

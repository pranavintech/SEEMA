import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seema/equity.dart';
import 'package:seema/main.dart';
import 'package:seema/recieve.dart';
// final provider = StateNotifierProvider((ref) => UrjaCoins());

class Wallet extends ConsumerWidget {
  const Wallet({super.key, required this.list});
  final List<Map<String, String>> list;
  @override
  Widget build(BuildContext context, ref) {
    final urjaController = TextEditingController();
    final meterController = TextEditingController();
    final urjaC = ref.watch(coinsProvider);
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white, Colors.blue])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('lib/assets/Vector2.png'),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "My Wallet: ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(
                      225,
                      0,
                      26,
                      119,
                    ),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Container(
                    // margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(137, 158, 158, 158),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                        ),
                      ],
                      // border: Border.all(color: Colors.blue, width: 3),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 75, 104, 236),
                        Color.fromARGB(255, 10, 63, 107)
                      ]),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Total Urja : ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "$urjaC URJA",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Mrkt At : ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "RS. 8",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // OutlinedButton(onPressed: (){}, child: child)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // const Text(
                //   "Operations",
                //   style: TextStyle(fontSize: 20),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 40),
                          backgroundColor:
                              const Color.fromARGB(255, 0, 26, 119),
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "SEND URJA",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              "METER: ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                controller: meterController,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: const InputDecoration(
                                                    // enabledBorder:
                                                    //     OutlineInputBorder(),
                                                    // focusedBorder:
                                                    //     OutlineInputBorder(),

                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              "URJA: ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                controller: urjaController,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration:
                                                    const InputDecoration(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 60,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.green,
                                              ),
                                              onPressed: () {
                                                if (urjaController
                                                        .text.isEmpty ||
                                                    (meterController
                                                                .text.length <
                                                            6 ||
                                                        meterController
                                                                .text.length >
                                                            6)) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                      backgroundColor:
                                                          Colors.red,
                                                      content: Text(
                                                        "Invalid Fields",
                                                      ),
                                                    ),
                                                  );
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
                                                final coins = int.parse(
                                                    urjaController.text);
                                                ref
                                                    .read(
                                                        coinsProvider.notifier)
                                                    .setCoins(coins);
                                                // Fluttertoast.showToast(
                                                //     msg: "This is Center Short Toast",
                                                //     toastLength: Toast.LENGTH_LONG,
                                                //     gravity: ToastGravity.CENTER,
                                                //     // timeInSecForIosWeb: 1,
                                                //     backgroundColor: Colors.red,
                                                //     textColor: Colors.white,
                                                //     fontSize: 16.0);
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                        const SnackBar(
                                                            backgroundColor:
                                                                Colors.green,
                                                            content: Text(
                                                                "Urja Send")));
                                                Navigator.pop(context);
                                              },
                                              child: const Text("SEND"),
                                            ),
                                            OutlinedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.red),
                                              onPressed: () {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                    backgroundColor: Colors.red,
                                                    content: Text(
                                                      "Urja Send Aborted!!",
                                                    ),
                                                  ),
                                                );
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                "Cancel",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  // actions: [
                                  //   TextButton(
                                  //       onPressed: () {
                                  //         Navigator.pop(context);
                                  //       },
                                  //       child: const Text("OK")),
                                  // ],
                                );
                              });

                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const Send()));
                        },
                        child: const Text(
                          "Send",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 40),
                          backgroundColor:
                              const Color.fromARGB(255, 0, 26, 119),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Recieve(list: list)));
                        },
                        child: const Text(
                          "Recieve",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(250, 40),
                      // backgroundColor: Color.fromARGB(255, 59, 170, 235),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Equity(),
                        ),
                      );
                    },
                    child: const Text(
                      "Equity",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 1, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("lib/assets/Vector1.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

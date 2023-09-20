import 'package:flutter/material.dart';

class Equity extends StatelessWidget {
  const Equity({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> content = [
      {
        'name': 'Prithvi Rajput',
        'type': 'owner',
        'equity': '45%',
        'energy': '170.55 kW'
      },
      {
        'name': 'Prachi Sharma',
        'type': 'holder',
        'equity': '2%',
        'energy': '7.58 kW'
      },
      {
        'name': 'Pranav Arora',
        'type': 'holder',
        'equity': '10%',
        'energy': '37.9 kW'
      },
      {
        'name': 'Aryan Garg',
        'type': 'holder',
        'equity': '42%',
        'energy': '159.18 kW'
      },
      {
        'name': 'Srishti Sharma',
        'type': 'holder',
        'equity': '1%',
        'energy': '3.79 kW'
      },
    ];
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 26, 119),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("Equity Distribution"),
        ),
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     width: 10,
                //     color: Colors.red,
                //   ),
                //   borderRadius: BorderRadius.circular(
                //     40,
                //   ),
                // ),
                child: const Column(
                  children: [
                    Text(
                      "URJA Produced: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "379 KW",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Equity Holders: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...content.map(
              (data) {
                return SizedBox(
                  width: double.infinity,
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data['name'].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "Type:  ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(data['type'].toString()),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "Equity: ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(data['equity'].toString()),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  const Text(
                                    "Energy Recieved Today: ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "${data['energy']}",
                                    style: const TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

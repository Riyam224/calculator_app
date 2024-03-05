import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // todo vars
  int playerOne = 0;
  int playerTwo = 0;
  double res = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 187, 110, 183),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 187, 110, 183),
          elevation: 0,
          title: const Center(
            child: Text(
              'Calc App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 223, 194, 221),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 70,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Result:  $res',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        // todo adding
                        onPressed: () {
                          setState(() {
                            res = (playerOne.toDouble() + playerTwo.toDouble());
                          });
                        },
                        child: const Text(
                          '+',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        // todo sub
                        onPressed: () {
                          setState(() {
                            res = (playerOne.toDouble() - playerTwo.toDouble());
                          });
                        },
                        child: const Text(
                          '-',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      // todo multiply
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            res = (playerOne.toDouble() * playerTwo.toDouble());
                          });
                        },
                        child: const Text(
                          '*',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      // todo division
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            res = (playerOne / playerTwo);
                          });
                        },
                        child: const Text(
                          '/',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'player 1',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    Text(
                      'player 2',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 4,
                  indent: 40,
                  endIndent: 40,
                  color: Color.fromARGB(110, 39, 3, 82),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // todo player one
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              playerOne++;
                            });
                          },
                          child: const Text(
                            '+',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Text(
                          '$playerOne',
                          style: const TextStyle(
                            fontSize: 50,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              playerOne--;
                            });
                          },
                          child: const Text(
                            '-',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // todo player two
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              playerTwo++;
                            });
                          },
                          child: const Text(
                            '+',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Text(
                          '$playerTwo',
                          style: const TextStyle(
                            fontSize: 50,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              playerTwo--;
                            });
                          },
                          child: const Text(
                            '-',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      playerOne = 0;
                      playerTwo = 0;
                    });
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 48, 12, 54),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

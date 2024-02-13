import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoint = 0;

  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("points counter",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$teamAPoint",
                        style: const TextStyle(fontSize: 164),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 40)),
                        onPressed: () {
                          setState(() {
                            teamAPoint++;
                          });
                          print(teamAPoint);
                        },
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 40)),
                          onPressed: () {
                            setState(() {
                              teamAPoint += 2;
                            });
                            print(teamAPoint);
                          },
                          child: const Text(
                            "Add 2 point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 40)),
                        onPressed: () {
                          setState(() {
                            teamAPoint += 3;
                          });
                          print(teamAPoint);
                        },
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      indent: 25,
                      endIndent: 25),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$teamBPoint",
                        style: const TextStyle(fontSize: 164),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 40)),
                        onPressed: () {
                          setState(() {
                            teamBPoint++;
                          });
                          print(teamBPoint);
                        },
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 40)),
                          onPressed: () {
                            setState(() {
                              teamBPoint += 2;
                            });
                            print(teamBPoint);
                          },
                          child: const Text(
                            "Add 2 point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 40)),
                        onPressed: () {
                          setState(() {
                            teamBPoint += 3;
                          });
                          print(teamBPoint);
                        },
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 40)),
              onPressed: () {
                setState(() {
                  teamAPoint = 0;
                  teamBPoint = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

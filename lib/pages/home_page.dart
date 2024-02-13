import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  int teamAPoint = 0;
  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit , CounterState>(
      builder: (BuildContext context, state) {
        return Scaffold(
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
                          onPressed: () {},
                          child: const Text(
                            "Add 1 point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 40)),
                            onPressed: () {},
                            child: const Text(
                              "Add 2 point",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 40)),
                          onPressed: () {},
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
                          onPressed: () {},
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
                            onPressed: () {},
                            child: const Text(
                              "Add 2 point",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 40)),
                          onPressed: () {},
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
                onPressed: () {},
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        );
      },
      listener: (BuildContext context, Object? state) {
        if (state is CounterAIncrementState) {
          teamAPoint = BlocProvider.of<CounterCubit>(context).teamAPoint;
          teamBPoint = BlocProvider.of<CounterCubit>(context).teamBPoint;
        }
      },
    );
  }
}

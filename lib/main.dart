import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        // theme: ThemeData(useMaterial3: false),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

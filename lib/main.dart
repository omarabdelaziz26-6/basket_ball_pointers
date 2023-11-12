import 'package:basketball_pointer_counter_app/bloc_observer.dart';
import 'package:basketball_pointer_counter_app/cubit/cubit/counter_cubit.dart';
import 'package:basketball_pointer_counter_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  runApp(const PointerCounter());
}

class PointerCounter extends StatelessWidget {
  const PointerCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

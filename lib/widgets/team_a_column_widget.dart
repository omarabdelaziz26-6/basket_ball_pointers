import 'package:basketball_pointer_counter_app/cubit/cubit/counter_cubit.dart';
import 'package:basketball_pointer_counter_app/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamAColumn extends StatelessWidget {
  final int teamAPoints;

  const TeamAColumn({super.key, required this.teamAPoints});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      // width: 150,
      child: Column(
        children: [
          const Text(
            "Team A",
            style: TextStyle(fontSize: 42),
          ),
          Text(
            "$teamAPoints",
            style: const TextStyle(
              fontSize: 170,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            buttonText: "Add 1 Points",
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .addPointsToTeamA(addedPoints: 1);
            },
          ),
          CustomButton(
            buttonText: "Add 2 Points",
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .addPointsToTeamA(addedPoints: 2);
            },
          ),
          CustomButton(
            buttonText: "Add 3 Points",
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .addPointsToTeamA(addedPoints: 3);
            },
          ),
        ],
      ),
    );
  }
}

import 'package:basketball_pointer_counter_app/cubit/cubit/counter_cubit.dart';
import 'package:basketball_pointer_counter_app/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamBColumn extends StatelessWidget {
  final int teamBPoints;

  const TeamBColumn({super.key, required this.teamBPoints});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      // width: 150,
      child: Column(
        children: [
          const Text(
            "Team B",
            style: TextStyle(fontSize: 42),
          ),
          Text(
            "$teamBPoints",
            style: const TextStyle(
              fontSize: 170,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .addPointsToTeamB(addedPoints: 1);
            },
            buttonText: "Add 1 Points",
          ),
          CustomButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .addPointsToTeamB(addedPoints: 2);
            },
            buttonText: "Add 2 Points",
          ),
          CustomButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .addPointsToTeamB(addedPoints: 3);
            },
            buttonText: "Add 3 Points",
          ),
        ],
      ),
    );
  }
}

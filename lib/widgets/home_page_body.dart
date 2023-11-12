import 'package:basketball_pointer_counter_app/cubit/cubit/counter_cubit.dart';
import 'package:basketball_pointer_counter_app/widgets/custom_button_widget.dart';
import 'package:basketball_pointer_counter_app/widgets/team_a_column_widget.dart';
import 'package:basketball_pointer_counter_app/widgets/team_b_column_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    super.key,
  });

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else if (state is CounterBIncrementState) {
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        } else if (state is CounterResetState) {
          teamAPoints = 0;
          teamBPoints = 0;
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamAColumn(
                    teamAPoints: teamAPoints,
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 20,
                      endIndent: 90,
                      color: Colors.grey,
                      width: 5,
                    ),
                  ),
                  TeamBColumn(teamBPoints: teamBPoints),
                ],
              ),
              CustomButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetPoints();
                },
                buttonText: "Reset",
                minimumSize: const Size(150, 40),
              )
            ],
          ),
        );
      },
    );
  }
}

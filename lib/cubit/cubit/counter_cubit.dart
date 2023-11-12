import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void addPointsToTeamA({required int addedPoints}) {
    teamAPoints += addedPoints;
    emit(CounterAIncrementState());
  }

  void addPointsToTeamB({required int addedPoints}) {
    teamBPoints += addedPoints;
    emit(CounterBIncrementState());
  }

  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}

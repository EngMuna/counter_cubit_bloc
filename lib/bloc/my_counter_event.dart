part of 'my_counter_bloc.dart';

@immutable
sealed class MyCounterEvent {}

  class IncrementEvent extends MyCounterEvent{}

  class DecrementEvent extends MyCounterEvent{}



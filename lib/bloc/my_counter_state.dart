part of 'my_counter_bloc.dart';

@immutable
sealed class MyCounterState {
  final int count1;
  MyCounterState(this.count1);
}

final class MyCounterInitial extends MyCounterState {
  MyCounterInitial():super(0);
}
final class MyCounterUpdate extends MyCounterState {
  MyCounterUpdate(super.count1);
}

part of 'my_counter_bloc.dart';

@immutable
sealed class MyCounterState extends Equatable {
  final int count1;
  MyCounterState(this.count1);

  @override
  List<Object?> get props => [count1];
}

final class MyCounterInitial extends MyCounterState {
  MyCounterInitial():super(0);

}
final class MyCounterUpdate extends MyCounterState {
  MyCounterUpdate(super.count1);


}

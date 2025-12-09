
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

 void incrementCounter(){
 emit(CounterUpdate(state.count+1));
}

  void decrementCounter(){
    emit(CounterUpdate(state.count-1));
  }
}

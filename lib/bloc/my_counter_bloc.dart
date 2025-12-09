import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'my_counter_event.dart';
part 'my_counter_state.dart';

class MyCounterBloc extends Bloc<MyCounterEvent, MyCounterState> {
  MyCounterBloc() : super(MyCounterInitial()) {

    on<IncrementEvent>((event, emit) {
      emit(MyCounterUpdate(state.count1+1));
    });
    on<DecrementEvent>((event, emit) {
      emit(MyCounterUpdate(state.count1-1));
    });
  }

}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increments>((event, emit) {
      final currentstatevalue = state.count;
      final incrementedValue = currentstatevalue + 1;
      return emit(CounterState(count: incrementedValue));
    });

    on<Decrements>((event, emit) {
      final currentstatevalue = state.count;
      final decrementedValue = currentstatevalue - 1;
      return emit(CounterState(count: decrementedValue));
    });
  }
}

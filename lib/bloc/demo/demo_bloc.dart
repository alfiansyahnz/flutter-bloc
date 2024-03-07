import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'demo_bloc.freezed.dart';
part 'demo_event.dart';
part 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, DemoState> {
  DemoBloc() : super(DemoState.init()) {
    on<_Increment>((event, emit) => _onIncrement(event, emit));
    on<_Decrement>((event, emit) => _onDecrement(event, emit));
  }

  void _onIncrement(_Increment e, Emitter emit) {
    print('Decrement Event Triggered');
    emit(state.copyWith(number: state.number + 1));
  }

  void _onDecrement(_Decrement e, Emitter emit) {
    print('Decrement Event Triggered');
    emit(state.copyWith(number: state.number - 1));
  }

  // void _NameFunction(_NameEvent e, Emitter emit) async {

  // }
}

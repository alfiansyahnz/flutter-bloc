part of 'demo_bloc.dart';

@freezed
class DemoState with _$DemoState {
  const factory DemoState({
    required int number,
  }) = _DemoState;

  factory DemoState.init() => const DemoState(number: 0);
}

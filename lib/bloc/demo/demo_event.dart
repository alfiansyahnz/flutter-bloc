part of 'demo_bloc.dart';

@freezed
class DemoEvent with _$DemoEvent {
  const factory DemoEvent.increment() = _Increment;
  const factory DemoEvent.decrement() = _Decrement;
  const factory DemoEvent.getList() = _GetList;
}

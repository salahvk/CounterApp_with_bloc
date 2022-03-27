part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Increments extends CounterEvent {}

class Decrements extends CounterEvent {}

part of 'random_bloc.dart';

@immutable
abstract class RandomEvent {
  static const int STATUS_LOGIN = 1;
  static const int STATUS_LOGOUT = 2;
}

class GetRandom extends RandomEvent {}

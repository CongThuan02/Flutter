part of 'count_cubit.dart';

@immutable
abstract class CountState {
  const CountState();
}

class CountInitial extends CountState {
  const CountInitial();
}

class CountLoading extends CountState {
  const CountLoading();
}

class CountLoaded extends CountState {
  final int count;
  const CountLoaded(this.count);

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object event) {
    if (identical(this, event)) return true;

    return event is CountLoaded && event.count == count;
  }

  @override
  int get hashCode => count.hashCode;
}

class CountError extends CountState {
  final String message;
  const CountError(this.message);

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object event) {
    if (identical(this, event)) return true;

    return event is CountError && event.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

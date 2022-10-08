part of 'random_bloc.dart';

@immutable
abstract class RandomState {
  const RandomState();
}

class RandomInitial extends RandomState {}

class RandomLoading extends RandomState {
  const RandomLoading();
}

class RandomLoaded extends RandomState {
  final String random;
  const RandomLoaded(this.random);

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object event) {
    if (identical(this, event)) return true;

    return event is RandomLoaded && event.random == random;
  }

  @override
  int get hashCode => random.hashCode;
}

class RandomError extends RandomState {
  final String message;
  const RandomError(this.message);

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object event) {
    if (identical(this, event)) return true;

    return event is RandomError && event.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

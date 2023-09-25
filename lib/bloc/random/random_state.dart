part of 'random_bloc.dart';

abstract class RandomState extends Equatable {
  const RandomState(this.datahome);

  final DataHomeModel datahome;

  @override
  List<Object> get props => [datahome];
}

class RandomInitial extends RandomState {
  RandomInitial(super.datahome);
}

class RandomLoading extends RandomState {
  RandomLoading(super.datahome);
}

class RandomCompleted extends RandomState {
  RandomCompleted(super.datahome);
}

class RandomError extends RandomState {
  RandomError(super.datahome);
}

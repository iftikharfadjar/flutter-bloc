import 'package:bloc/bloc.dart';
import 'package:bloc1/data/models/data_home.dart';
import 'package:equatable/equatable.dart';
import '../../data/repositories/randomRepository.dart';

part 'random_event.dart';
part 'random_state.dart';

class RandomBloc extends Bloc<RandomEvent, RandomState> {
  RandomRepository randomRepository;

  RandomBloc(this.randomRepository) : super(RandomInitial(DataHomeModel())) {
    on<getRandomEvent>((event, emit) async {
      try {
        emit(RandomLoading(state.datahome));

        Map<String, dynamic> dataRandom =
            await randomRepository.getRandomData();

        if (dataRandom["error"] == true) {
          throw dataRandom["message"];
        } else {
          DataHomeModel dataHome = dataRandom["data"];
          emit(RandomCompleted(dataHome));
        }
      } catch (e) {
        emit(RandomError(state.datahome));
      }
    });
  }
}

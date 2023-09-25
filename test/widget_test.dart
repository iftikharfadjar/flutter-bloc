import 'package:bloc1/data/providers/user_provider.dart';
import 'package:bloc1/data/providers/masakan_provider.dart';
import 'package:bloc1/data/repositories/randomRepository.dart';
import 'package:bloc1/data/models/data_home.dart';

void main() async {
  // UserProvider userProvider = UserProvider();
  // MasakanProvider masakanProvider = MasakanProvider();

  // print(await userProvider.getDataUser());
  // print(await masakanProvider.getDataMasakan());

  RandomRepository randomRepository = RandomRepository();

  Map<String, dynamic> dataRandom = await randomRepository.getRandomData();
  DataHomeModel data = dataRandom["data"];
  print(data.toJson());
}

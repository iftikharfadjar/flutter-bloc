import 'package:bloc1/data/providers/user_provider.dart';
import 'package:bloc1/data/providers/masakan_provider.dart';

void main() async {
  UserProvider userProvider = UserProvider();
  MasakanProvider masakanProvider = MasakanProvider();

  print(await userProvider.getDataUser());
  print(await masakanProvider.getDataMasakan());
}

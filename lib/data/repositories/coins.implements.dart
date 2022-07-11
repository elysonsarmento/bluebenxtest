import 'package:bluebenxtest/data/dataSources/coins.datasources.dart';
import 'package:bluebenxtest/domain/repositories/coins.repository.dart';

class CoinsRepositoryImplements extends ICoinsRepo {
  final ICoinsDataSourcer coinsDataSourcer;
  final path = "https://api.coingecko.com/api/v3/coins/markets";

  CoinsRepositoryImplements(this.coinsDataSourcer);
  @override
  getAllCoin() async{
    try {
     return await coinsDataSourcer.getCoins(path);
    } catch (e) {
      rethrow;
    }
  }
}

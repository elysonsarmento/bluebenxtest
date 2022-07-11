import 'package:bluebenxtest/data/model/coin.model.dart';
import 'package:bluebenxtest/domain/repositories/coins.repository.dart';

class CoinsUseCase {
  final ICoinsRepo repository;

  List<Coins> fetchCoins() {
    return repository.getAllCoin();
  }

  CoinsUseCase(this.repository);
}

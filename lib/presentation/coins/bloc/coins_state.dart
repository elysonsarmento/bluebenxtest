part of 'coins_bloc.dart';

@immutable
abstract class CoinsState {}

class CoinsLoading extends CoinsState {}

class CoinsSucess extends CoinsState {
  final List<Coins> listCoins;

  CoinsSucess(this.listCoins);
}

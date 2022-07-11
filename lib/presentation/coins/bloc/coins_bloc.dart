import 'package:bloc/bloc.dart';
import 'package:bluebenxtest/data/model/coin.model.dart';
import 'package:bluebenxtest/domain/usecases/coins.usecases.dart';
import "package:meta/meta.dart";

part 'coins_event.dart';
part 'coins_state.dart';

class CoinsBloc extends Bloc<CoinsEvent, CoinsState> {
  final CoinsUseCase useCase;

  CoinsBloc(this.useCase) : super(CoinsLoading()) {
    on<CoinsLoadingEvent>((event, emit) async{
      try {
       final result =  await useCase.fetchCoins();
       print(result);
       emit(CoinsSucess(result));
      } catch (e) {
        print(e);
      }
    });
  }
}

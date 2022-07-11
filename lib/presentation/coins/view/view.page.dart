import 'package:bluebenxtest/presentation/coins/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';


class CoinsList extends StatelessWidget {
  static const ROUTE = '/coins';
  const CoinsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<CoinsBloc, CoinsState>(
        builder: (context, CoinsState state) {
          if (state is CoinsSucess) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.listCoins.length,
              itemBuilder: ((context, index) {
                final coin = state.listCoins[index];
                return Container(
                  color: Colors.grey,
                  height: 120,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 40, ),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network(
                           coin.image!,
                           width: 70,
                          ),
                          SizedBox(width: 15,),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('${coin.name}'),
                               SizedBox(
                                 height: 30,
                               ),
                               Text('vol.: ${coin.total_volume?.toStringAsExponential(3)}'),
                             ],
                           ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( "R\$"  + NumberFormat("#,##0.00", "en_US").format(coin.current_price)),
                          SizedBox(
                            height: 40,
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                );
              }),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

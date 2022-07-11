import 'package:bluebenxtest/data/model/coin.model.dart';

import 'coins.datasources.dart';
import '../../service/http/http.servicer.dart';

class CoinDatasourceImplements extends ICoinsDataSourcer {
  final IHTTPClientService client;

  CoinDatasourceImplements(this.client);
  @override
  getCoins(String url) async {
    try {
      final result = await client.get(url, params: {
        "vs_currency": "brl",
        "order": "market_cap_desc",
        "price_change_percentage": "24h,30d,200d,1y",
        "sparkline": false,
        "per_page": 250,
      });
      final listItem = result.map((e) => Coins.fromJson(e)).toList();
      return listItem;
    } catch (e) {
      rethrow;
    }
  }
}

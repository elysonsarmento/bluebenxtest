import 'package:bluebenxtest/service/http/http.servicer.dart';
import 'package:dio/dio.dart';

class HTTPClient implements IHTTPClientService {
  final client = Dio();
  HTTPClient({required this.authUser}) {
    Future.value(() {
      authUser.user?.getIdToken().then((value) {
        client.options.headers['Authorization'] = value;
      });
    });
  }
  @override
  final authUser;

  @override
  get(url, {params}) async {
    try {
      final result = await client.get(url, queryParameters: params);

      return result.data;
    } catch (e) {
      rethrow;
    }
  }
}

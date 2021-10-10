import "package:http/http.dart";
import 'package:movies/common/utility.dart';

class NetworkHandler{
  static final NetworkHandler _networkHandler = NetworkHandler._internal();

  factory NetworkHandler() {
    return _networkHandler;
  }

  NetworkHandler._internal();
  Future<Response> getData(String url) async {

      return await get(Uri.parse(url),)
              .catchError((dynamic exception) {
                Utility.log(exception);
            return null;
          });
  }

}
import 'package:movies/common/response_status.dart';

class ResponseModel<T> {
  late ResponseStatus responseStatus;
  String message;
  List<T> data;
  late int responseCode;

  ResponseModel(this.responseStatus, this.message, this.data,);


  factory ResponseModel.loading() {
    return ResponseModel(ResponseStatus.LOADING, "", [], );
  }

  factory ResponseModel.success(List<T> data, String message) {
    return ResponseModel(ResponseStatus.SUCCESS, message, data, );
  }

  factory ResponseModel.noData() {
    return ResponseModel(ResponseStatus.NO_DATA, "No Movies Found", [],);
  }
}

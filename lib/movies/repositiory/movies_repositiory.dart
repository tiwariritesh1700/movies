import 'dart:convert';

import 'package:movies/common/network_handler.dart';
import 'package:movies/common/api.dart';
import "package:http/http.dart";
import 'package:movies/common/response_model.dart';
import 'package:movies/common/response_status.dart';
import 'package:movies/common/utility.dart';
import 'package:movies/main.dart';
import 'package:movies/movies/model/movies_model.dart';
import 'package:movies/common/database/app_database.dart';

class MoviesRepositiory{

final NetworkHandler _networkHandler = NetworkHandler();

Future<void> getMoviesData () async{
  Response response = await _networkHandler.getData(API.API_GET_MOVIES_URL);
  if(response.statusCode==200){
    Map rawData = jsonDecode(response.body);
    Utility.log(rawData);

    List movieresults = rawData['results'];
    List<MoviesModel> _listResult = [];
    if (movieresults != null && movieresults.isNotEmpty) {
      _listResult = MoviesModel.fromMapArrObj(movieresults);
    }
    if(_listResult.isNotEmpty){
      await Future.forEach<MoviesModel>(_listResult, (movieResults) async {
        await appDatabase.moviesDao.insertMovies(movieResults.toMoor());

      });
      Utility.log("Insertion done");
  }
  }

}



}
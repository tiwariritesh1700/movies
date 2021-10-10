import 'dart:async';

import 'package:movies/common/database/app_database.dart';
import 'package:movies/common/response_model.dart';
import 'package:movies/common/utility.dart';
import 'package:movies/main.dart';
import 'package:movies/movies/model/movies_model.dart';
import 'package:movies/movies/repositiory/movies_repositiory.dart';

class MoviesBloc{
 late MoviesRepositiory _repositiory;
 MoviesModel moviesModel = MoviesModel.zero();

 MoviesBloc(){
   _repositiory = MoviesRepositiory();
   loadMoviesData();
 }

 StreamController<ResponseModel<MoviesModel>> moviesModelListController = StreamController<ResponseModel<MoviesModel>>();

  void loadMoviesData()async {
    moviesModelListController.sink.add(ResponseModel.loading());
bool isConnected = await Utility.isNetworkConnected();
    if(isConnected){
      await   _repositiory.getMoviesData();
    }

   getMoviesDataFromDatabase();
  }

  getMoviesDataFromDatabase() async{
    List<MoviesModel> listMoviesModel= [];
 List<MoviesMoorModelData> listMoviesMoorModelData=   await appDatabase.moviesDao.getAllMovies();
 if(listMoviesMoorModelData.isNotEmpty){
   for (var moviesMoorModelData in listMoviesMoorModelData) {
     listMoviesModel.add(moviesModel.fromMoor(moviesMoorModelData));
   }
   moviesModelListController.add(ResponseModel.success(listMoviesModel, "Movies Loaded"),);

 }else{
   moviesModelListController.add(ResponseModel.noData(),);

 }


  }

void close(){
  moviesModelListController.close();
}
}
import 'package:moor_flutter/moor_flutter.dart';
import 'package:movies/common/database/app_database.dart';
import 'package:movies/common/utility.dart';
import 'package:movies/movies/database/moormodel/movies_moor_model.dart';
part 'movies_moor_dao.g.dart';

@UseDao(tables: [MoviesMoorModel])
class MoviesDao extends DatabaseAccessor<AppDatabase> with _$MoviesDaoMixin{
  final AppDatabase db;
  MoviesDao(this.db) : super(db);

  Future insertMovies(MoviesMoorModelData moviesMoorModelData) async {
    try {
      int _id = await into(moviesMoorModel).insert(moviesMoorModelData);
      return _id;
    } catch (e) {
      Utility.log(e);
      await updateCustomer(moviesMoorModelData);
    }
  }

  Future updateCustomer(MoviesMoorModelData moviesMoorModelData) =>
      update(moviesMoorModel).replace(moviesMoorModelData);

  Future<List<MoviesMoorModelData>> getAllMovies() => select(moviesMoorModel).get();


}
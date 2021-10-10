import 'package:moor_flutter/moor_flutter.dart';
import 'package:movies/movies/database/dao/movies_moor_dao.dart';
import 'package:movies/movies/database/moormodel/movies_moor_model.dart';
part 'app_database.g.dart';

@UseMoor(tables: [MoviesMoorModel],daos: [
  MoviesDao
])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
      path: "db.sqlite", logStatements: true));

  int get schemaVersion => 1;
}
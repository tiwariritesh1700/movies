import 'package:moor_flutter/moor_flutter.dart';

class MoviesMoorModel extends Table{
  BoolColumn get adult => boolean().nullable()();

  IntColumn get id => integer().nullable()();
  TextColumn get backdropPath => text().nullable()();
  TextColumn get originalLanguage => text().nullable()();
  RealColumn get popularity=> real().nullable()();
  TextColumn get originalTitle => text().nullable()();
  TextColumn get overview => text().nullable()();
  TextColumn get posterPath => text().nullable()();
  TextColumn get releaseDate => text().nullable()();
  TextColumn get title => text().nullable()();
  BoolColumn get video => boolean().nullable()();
  RealColumn get voteAverage=> real().nullable()();
  IntColumn get voteCount => integer().nullable()();


  @override
  Set<Column> get primaryKey => {id};
}
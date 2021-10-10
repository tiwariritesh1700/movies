// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MoviesMoorModelData extends DataClass
    implements Insertable<MoviesMoorModelData> {
  final bool? adult;
  final int? id;
  final String? backdropPath;
  final String? originalLanguage;
  final double? popularity;
  final String? originalTitle;
  final String? overview;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;
  MoviesMoorModelData(
      {this.adult,
      this.id,
      this.backdropPath,
      this.originalLanguage,
      this.popularity,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});
  factory MoviesMoorModelData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MoviesMoorModelData(
      adult: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}adult']),
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      backdropPath: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}backdrop_path']),
      originalLanguage: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}original_language']),
      popularity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}popularity']),
      originalTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}original_title']),
      overview: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overview']),
      posterPath: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}poster_path']),
      releaseDate: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}release_date']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title']),
      video: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video']),
      voteAverage: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_average']),
      voteCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_count']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || adult != null) {
      map['adult'] = Variable<bool?>(adult);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || backdropPath != null) {
      map['backdrop_path'] = Variable<String?>(backdropPath);
    }
    if (!nullToAbsent || originalLanguage != null) {
      map['original_language'] = Variable<String?>(originalLanguage);
    }
    if (!nullToAbsent || popularity != null) {
      map['popularity'] = Variable<double?>(popularity);
    }
    if (!nullToAbsent || originalTitle != null) {
      map['original_title'] = Variable<String?>(originalTitle);
    }
    if (!nullToAbsent || overview != null) {
      map['overview'] = Variable<String?>(overview);
    }
    if (!nullToAbsent || posterPath != null) {
      map['poster_path'] = Variable<String?>(posterPath);
    }
    if (!nullToAbsent || releaseDate != null) {
      map['release_date'] = Variable<String?>(releaseDate);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String?>(title);
    }
    if (!nullToAbsent || video != null) {
      map['video'] = Variable<bool?>(video);
    }
    if (!nullToAbsent || voteAverage != null) {
      map['vote_average'] = Variable<double?>(voteAverage);
    }
    if (!nullToAbsent || voteCount != null) {
      map['vote_count'] = Variable<int?>(voteCount);
    }
    return map;
  }

  MoviesMoorModelCompanion toCompanion(bool nullToAbsent) {
    return MoviesMoorModelCompanion(
      adult:
          adult == null && nullToAbsent ? const Value.absent() : Value(adult),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      backdropPath: backdropPath == null && nullToAbsent
          ? const Value.absent()
          : Value(backdropPath),
      originalLanguage: originalLanguage == null && nullToAbsent
          ? const Value.absent()
          : Value(originalLanguage),
      popularity: popularity == null && nullToAbsent
          ? const Value.absent()
          : Value(popularity),
      originalTitle: originalTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(originalTitle),
      overview: overview == null && nullToAbsent
          ? const Value.absent()
          : Value(overview),
      posterPath: posterPath == null && nullToAbsent
          ? const Value.absent()
          : Value(posterPath),
      releaseDate: releaseDate == null && nullToAbsent
          ? const Value.absent()
          : Value(releaseDate),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      video:
          video == null && nullToAbsent ? const Value.absent() : Value(video),
      voteAverage: voteAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(voteAverage),
      voteCount: voteCount == null && nullToAbsent
          ? const Value.absent()
          : Value(voteCount),
    );
  }

  factory MoviesMoorModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoviesMoorModelData(
      adult: serializer.fromJson<bool?>(json['adult']),
      id: serializer.fromJson<int?>(json['id']),
      backdropPath: serializer.fromJson<String?>(json['backdropPath']),
      originalLanguage: serializer.fromJson<String?>(json['originalLanguage']),
      popularity: serializer.fromJson<double?>(json['popularity']),
      originalTitle: serializer.fromJson<String?>(json['originalTitle']),
      overview: serializer.fromJson<String?>(json['overview']),
      posterPath: serializer.fromJson<String?>(json['posterPath']),
      releaseDate: serializer.fromJson<String?>(json['releaseDate']),
      title: serializer.fromJson<String?>(json['title']),
      video: serializer.fromJson<bool?>(json['video']),
      voteAverage: serializer.fromJson<double?>(json['voteAverage']),
      voteCount: serializer.fromJson<int?>(json['voteCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'adult': serializer.toJson<bool?>(adult),
      'id': serializer.toJson<int?>(id),
      'backdropPath': serializer.toJson<String?>(backdropPath),
      'originalLanguage': serializer.toJson<String?>(originalLanguage),
      'popularity': serializer.toJson<double?>(popularity),
      'originalTitle': serializer.toJson<String?>(originalTitle),
      'overview': serializer.toJson<String?>(overview),
      'posterPath': serializer.toJson<String?>(posterPath),
      'releaseDate': serializer.toJson<String?>(releaseDate),
      'title': serializer.toJson<String?>(title),
      'video': serializer.toJson<bool?>(video),
      'voteAverage': serializer.toJson<double?>(voteAverage),
      'voteCount': serializer.toJson<int?>(voteCount),
    };
  }

  MoviesMoorModelData copyWith(
          {bool? adult,
          int? id,
          String? backdropPath,
          String? originalLanguage,
          double? popularity,
          String? originalTitle,
          String? overview,
          String? posterPath,
          String? releaseDate,
          String? title,
          bool? video,
          double? voteAverage,
          int? voteCount}) =>
      MoviesMoorModelData(
        adult: adult ?? this.adult,
        id: id ?? this.id,
        backdropPath: backdropPath ?? this.backdropPath,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        popularity: popularity ?? this.popularity,
        originalTitle: originalTitle ?? this.originalTitle,
        overview: overview ?? this.overview,
        posterPath: posterPath ?? this.posterPath,
        releaseDate: releaseDate ?? this.releaseDate,
        title: title ?? this.title,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
      );
  @override
  String toString() {
    return (StringBuffer('MoviesMoorModelData(')
          ..write('adult: $adult, ')
          ..write('id: $id, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('popularity: $popularity, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('overview: $overview, ')
          ..write('posterPath: $posterPath, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      adult.hashCode,
      $mrjc(
          id.hashCode,
          $mrjc(
              backdropPath.hashCode,
              $mrjc(
                  originalLanguage.hashCode,
                  $mrjc(
                      popularity.hashCode,
                      $mrjc(
                          originalTitle.hashCode,
                          $mrjc(
                              overview.hashCode,
                              $mrjc(
                                  posterPath.hashCode,
                                  $mrjc(
                                      releaseDate.hashCode,
                                      $mrjc(
                                          title.hashCode,
                                          $mrjc(
                                              video.hashCode,
                                              $mrjc(
                                                  voteAverage.hashCode,
                                                  voteCount
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoviesMoorModelData &&
          other.adult == this.adult &&
          other.id == this.id &&
          other.backdropPath == this.backdropPath &&
          other.originalLanguage == this.originalLanguage &&
          other.popularity == this.popularity &&
          other.originalTitle == this.originalTitle &&
          other.overview == this.overview &&
          other.posterPath == this.posterPath &&
          other.releaseDate == this.releaseDate &&
          other.title == this.title &&
          other.video == this.video &&
          other.voteAverage == this.voteAverage &&
          other.voteCount == this.voteCount);
}

class MoviesMoorModelCompanion extends UpdateCompanion<MoviesMoorModelData> {
  final Value<bool?> adult;
  final Value<int?> id;
  final Value<String?> backdropPath;
  final Value<String?> originalLanguage;
  final Value<double?> popularity;
  final Value<String?> originalTitle;
  final Value<String?> overview;
  final Value<String?> posterPath;
  final Value<String?> releaseDate;
  final Value<String?> title;
  final Value<bool?> video;
  final Value<double?> voteAverage;
  final Value<int?> voteCount;
  const MoviesMoorModelCompanion({
    this.adult = const Value.absent(),
    this.id = const Value.absent(),
    this.backdropPath = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.popularity = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.overview = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.title = const Value.absent(),
    this.video = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.voteCount = const Value.absent(),
  });
  MoviesMoorModelCompanion.insert({
    this.adult = const Value.absent(),
    this.id = const Value.absent(),
    this.backdropPath = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.popularity = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.overview = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.title = const Value.absent(),
    this.video = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.voteCount = const Value.absent(),
  });
  static Insertable<MoviesMoorModelData> custom({
    Expression<bool?>? adult,
    Expression<int?>? id,
    Expression<String?>? backdropPath,
    Expression<String?>? originalLanguage,
    Expression<double?>? popularity,
    Expression<String?>? originalTitle,
    Expression<String?>? overview,
    Expression<String?>? posterPath,
    Expression<String?>? releaseDate,
    Expression<String?>? title,
    Expression<bool?>? video,
    Expression<double?>? voteAverage,
    Expression<int?>? voteCount,
  }) {
    return RawValuesInsertable({
      if (adult != null) 'adult': adult,
      if (id != null) 'id': id,
      if (backdropPath != null) 'backdrop_path': backdropPath,
      if (originalLanguage != null) 'original_language': originalLanguage,
      if (popularity != null) 'popularity': popularity,
      if (originalTitle != null) 'original_title': originalTitle,
      if (overview != null) 'overview': overview,
      if (posterPath != null) 'poster_path': posterPath,
      if (releaseDate != null) 'release_date': releaseDate,
      if (title != null) 'title': title,
      if (video != null) 'video': video,
      if (voteAverage != null) 'vote_average': voteAverage,
      if (voteCount != null) 'vote_count': voteCount,
    });
  }

  MoviesMoorModelCompanion copyWith(
      {Value<bool?>? adult,
      Value<int?>? id,
      Value<String?>? backdropPath,
      Value<String?>? originalLanguage,
      Value<double?>? popularity,
      Value<String?>? originalTitle,
      Value<String?>? overview,
      Value<String?>? posterPath,
      Value<String?>? releaseDate,
      Value<String?>? title,
      Value<bool?>? video,
      Value<double?>? voteAverage,
      Value<int?>? voteCount}) {
    return MoviesMoorModelCompanion(
      adult: adult ?? this.adult,
      id: id ?? this.id,
      backdropPath: backdropPath ?? this.backdropPath,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      popularity: popularity ?? this.popularity,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (adult.present) {
      map['adult'] = Variable<bool?>(adult.value);
    }
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (backdropPath.present) {
      map['backdrop_path'] = Variable<String?>(backdropPath.value);
    }
    if (originalLanguage.present) {
      map['original_language'] = Variable<String?>(originalLanguage.value);
    }
    if (popularity.present) {
      map['popularity'] = Variable<double?>(popularity.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String?>(originalTitle.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String?>(overview.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String?>(posterPath.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<String?>(releaseDate.value);
    }
    if (title.present) {
      map['title'] = Variable<String?>(title.value);
    }
    if (video.present) {
      map['video'] = Variable<bool?>(video.value);
    }
    if (voteAverage.present) {
      map['vote_average'] = Variable<double?>(voteAverage.value);
    }
    if (voteCount.present) {
      map['vote_count'] = Variable<int?>(voteCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoviesMoorModelCompanion(')
          ..write('adult: $adult, ')
          ..write('id: $id, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('popularity: $popularity, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('overview: $overview, ')
          ..write('posterPath: $posterPath, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }
}

class $MoviesMoorModelTable extends MoviesMoorModel
    with TableInfo<$MoviesMoorModelTable, MoviesMoorModelData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MoviesMoorModelTable(this._db, [this._alias]);
  final VerificationMeta _adultMeta = const VerificationMeta('adult');
  late final GeneratedColumn<bool?> adult = GeneratedColumn<bool?>(
      'adult', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (adult IN (0, 1))');
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _backdropPathMeta =
      const VerificationMeta('backdropPath');
  late final GeneratedColumn<String?> backdropPath = GeneratedColumn<String?>(
      'backdrop_path', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _originalLanguageMeta =
      const VerificationMeta('originalLanguage');
  late final GeneratedColumn<String?> originalLanguage =
      GeneratedColumn<String?>('original_language', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _popularityMeta = const VerificationMeta('popularity');
  late final GeneratedColumn<double?> popularity = GeneratedColumn<double?>(
      'popularity', aliasedName, true,
      typeName: 'REAL', requiredDuringInsert: false);
  final VerificationMeta _originalTitleMeta =
      const VerificationMeta('originalTitle');
  late final GeneratedColumn<String?> originalTitle = GeneratedColumn<String?>(
      'original_title', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _overviewMeta = const VerificationMeta('overview');
  late final GeneratedColumn<String?> overview = GeneratedColumn<String?>(
      'overview', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _posterPathMeta = const VerificationMeta('posterPath');
  late final GeneratedColumn<String?> posterPath = GeneratedColumn<String?>(
      'poster_path', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _releaseDateMeta =
      const VerificationMeta('releaseDate');
  late final GeneratedColumn<String?> releaseDate = GeneratedColumn<String?>(
      'release_date', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _videoMeta = const VerificationMeta('video');
  late final GeneratedColumn<bool?> video = GeneratedColumn<bool?>(
      'video', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (video IN (0, 1))');
  final VerificationMeta _voteAverageMeta =
      const VerificationMeta('voteAverage');
  late final GeneratedColumn<double?> voteAverage = GeneratedColumn<double?>(
      'vote_average', aliasedName, true,
      typeName: 'REAL', requiredDuringInsert: false);
  final VerificationMeta _voteCountMeta = const VerificationMeta('voteCount');
  late final GeneratedColumn<int?> voteCount = GeneratedColumn<int?>(
      'vote_count', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        adult,
        id,
        backdropPath,
        originalLanguage,
        popularity,
        originalTitle,
        overview,
        posterPath,
        releaseDate,
        title,
        video,
        voteAverage,
        voteCount
      ];
  @override
  String get aliasedName => _alias ?? 'movies_moor_model';
  @override
  String get actualTableName => 'movies_moor_model';
  @override
  VerificationContext validateIntegrity(
      Insertable<MoviesMoorModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('adult')) {
      context.handle(
          _adultMeta, adult.isAcceptableOrUnknown(data['adult']!, _adultMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('backdrop_path')) {
      context.handle(
          _backdropPathMeta,
          backdropPath.isAcceptableOrUnknown(
              data['backdrop_path']!, _backdropPathMeta));
    }
    if (data.containsKey('original_language')) {
      context.handle(
          _originalLanguageMeta,
          originalLanguage.isAcceptableOrUnknown(
              data['original_language']!, _originalLanguageMeta));
    }
    if (data.containsKey('popularity')) {
      context.handle(
          _popularityMeta,
          popularity.isAcceptableOrUnknown(
              data['popularity']!, _popularityMeta));
    }
    if (data.containsKey('original_title')) {
      context.handle(
          _originalTitleMeta,
          originalTitle.isAcceptableOrUnknown(
              data['original_title']!, _originalTitleMeta));
    }
    if (data.containsKey('overview')) {
      context.handle(_overviewMeta,
          overview.isAcceptableOrUnknown(data['overview']!, _overviewMeta));
    }
    if (data.containsKey('poster_path')) {
      context.handle(
          _posterPathMeta,
          posterPath.isAcceptableOrUnknown(
              data['poster_path']!, _posterPathMeta));
    }
    if (data.containsKey('release_date')) {
      context.handle(
          _releaseDateMeta,
          releaseDate.isAcceptableOrUnknown(
              data['release_date']!, _releaseDateMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('video')) {
      context.handle(
          _videoMeta, video.isAcceptableOrUnknown(data['video']!, _videoMeta));
    }
    if (data.containsKey('vote_average')) {
      context.handle(
          _voteAverageMeta,
          voteAverage.isAcceptableOrUnknown(
              data['vote_average']!, _voteAverageMeta));
    }
    if (data.containsKey('vote_count')) {
      context.handle(_voteCountMeta,
          voteCount.isAcceptableOrUnknown(data['vote_count']!, _voteCountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoviesMoorModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MoviesMoorModelData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MoviesMoorModelTable createAlias(String alias) {
    return $MoviesMoorModelTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $MoviesMoorModelTable moviesMoorModel =
      $MoviesMoorModelTable(this);
  late final MoviesDao moviesDao = MoviesDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [moviesMoorModel];
}

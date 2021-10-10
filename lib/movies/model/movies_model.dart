import 'package:movies/common/database/app_database.dart';
import 'package:movies/common/utility.dart';

class MoviesModel {
  MoviesModel.zero();

  MoviesModel({
    bool? adult,
    String? backdropPath,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    _adult = adult;
    _backdropPath = backdropPath;
    _id = id;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _releaseDate = releaseDate;
    _title = title;
    _video = video;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
  }

  static List<MoviesModel> fromMapArrObj(List<dynamic> map) {
    List<MoviesModel> animalList = <MoviesModel>[];
    map.map((item) {
      animalList.add(MoviesModel.fromJson(item));
    }).toList();
    return animalList;
  }

  MoviesModel.fromJson(dynamic json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    _id = json['id'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _title = json['title'];
    _video = json['video'];
    _voteAverage = json['vote_average'] != null
        ? double.tryParse(json['vote_average'].toString())
        : 0.0;
    _voteCount = json['vote_count'];
  }

  bool? _adult;
  String? _backdropPath;
  int? _id;
  String? _originalLanguage;
  String? _originalTitle;
  String? _overview;
  double? _popularity;
  String? _posterPath;
  String? _releaseDate;
  String? _title;
  bool? _video;
  double? _voteAverage;
  int? _voteCount;

  bool? get adult => _adult;

  String? get backdropPath => _backdropPath;

  int? get id => _id;

  String? get originalLanguage => _originalLanguage;

  String? get originalTitle => _originalTitle;

  String? get overview => _overview;

  double? get popularity => _popularity;

  String? get posterPath => _posterPath;

  String? get releaseDate => _releaseDate;

  String? get title => _title;

  bool? get video => _video;

  double? get voteAverage => _voteAverage;

  int? get voteCount => _voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = _adult;
    map['backdrop_path'] = _backdropPath;
    map['id'] = _id;
    map['original_language'] = _originalLanguage;
    map['original_title'] = _originalTitle;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    map['release_date'] = _releaseDate;
    map['title'] = _title;
    map['video'] = _video;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }

  MoviesMoorModelData toMoor(){
    try{

      return MoviesMoorModelData(
        adult:_adult,
        id: _id,
        backdropPath: _backdropPath,
        originalLanguage: _originalLanguage,
        popularity: _popularity,
        originalTitle: _originalTitle,
        overview: _overview,
        posterPath: _posterPath,
        releaseDate: _releaseDate,
        title: _title,
        video: _video,
        voteAverage: _voteAverage,
        voteCount: _voteCount,
      );
    }catch(e){
      Utility.log(e);
    }
  return  MoviesMoorModelData();
  }

  MoviesModel fromMoor(MoviesMoorModelData moviesMoorModelData){
    try{

      return MoviesModel(
        adult:moviesMoorModelData.adult,
        id: moviesMoorModelData.id,
        backdropPath: moviesMoorModelData.backdropPath,
        originalLanguage: moviesMoorModelData.originalLanguage,
        popularity: moviesMoorModelData.popularity,
        originalTitle: moviesMoorModelData.originalTitle,
        overview: moviesMoorModelData.overview,
        posterPath: moviesMoorModelData.posterPath,
        releaseDate: moviesMoorModelData.releaseDate,
        title: moviesMoorModelData.title,
        video: moviesMoorModelData.video,
        voteAverage: moviesMoorModelData.voteAverage,
        voteCount: moviesMoorModelData.voteCount,
      );
    }catch(e){
      Utility.log(e);
    }
    return  MoviesModel();
  }
}

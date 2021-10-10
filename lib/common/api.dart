import 'package:movies/common/constants.dart';

class API{

  static const String API_GET_MOVIES_URL="https://api.themoviedb.org/3/discover/movie?api_key=${Constants.API_KEY}&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate";

  static const String PRFIX_FOR_MOVIES_IMAGE="https://image.tmdb.org/t/p/w500";
}
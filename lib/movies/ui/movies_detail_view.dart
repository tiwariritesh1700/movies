import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies/common/utility.dart';
import 'package:movies/movies/model/movies_model.dart';
import 'dart:ui' as ui;

class MoviesDetailView extends StatefulWidget {
  final  MoviesModel moviesModel;

  const MoviesDetailView({Key? key,  required this.moviesModel}) : super(key: key);

  @override
  _MoviesDetailViewState createState() => _MoviesDetailViewState();
}

class _MoviesDetailViewState extends State<MoviesDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.moviesModel.title ?? "Movies Detail Page"),
      ),
      body: Stack(fit: StackFit.expand, children: [
        _backGroundImage(),
        getBackdropFilter(),
        SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                _getVisibleMovieImage(widget.moviesModel),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 0.0),
                  child: Row(
                    children: <Widget>[getMovieTitle(), getMovieRating()],
                  ),
                ),
                getMovieDescription(),
              ],
            ),
          ),
        )
      ]),
    );
  }

  Text getMovieDescription() => Text(widget.moviesModel.overview ?? "",
      style: const TextStyle(
        color: Colors.white,
      ));

  Text getMovieRating() {
    return Text(
      '${widget.moviesModel.voteAverage}/10',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    );
  }

  Expanded getMovieTitle() {
    return Expanded(
        child: Text(
      widget.moviesModel.title ?? "",
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30.0,
      ),
    ));
  }

  // Container _getVisibleMovieImage() {
  //   return Container(
  //     alignment: Alignment.center,
  //     child: Container(
  //       width: 400.0,
  //       height: 400.0,
  //     ),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10.0),
  //         image: DecorationImage(
  //             image: NetworkImage(
  //               Utility.getImage(widget.moviesModel.posterPath ?? ""),
  //             ),
  //             fit: BoxFit.cover),
  //         boxShadow: const [
  //           BoxShadow(
  //               color: Colors.black,
  //               blurRadius: 20.0,
  //               offset: Offset(0.0, 10.0))
  //         ]),
  //   );
  // }

  BackdropFilter getBackdropFilter() {
    return BackdropFilter(
      filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: Container(
        color: Colors.black.withOpacity(0.5),
      ),
    );
  }

 Widget _backGroundImage() {
    return _getMovieImage(widget.moviesModel);
  }
  Widget _getMovieImage(MoviesModel data) {
    return CachedNetworkImage(
      imageUrl: Utility.getImage(data.posterPath ?? ""),
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
          ),
        ),

      ),
      placeholder: (context, url) =>
      const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) =>
          Image.asset('assets/images/movies.png'),

    );
  }
  Widget _getVisibleMovieImage(MoviesModel data) {
    return CachedNetworkImage(
      imageUrl: Utility.getImage(data.posterPath ?? ""),
      imageBuilder: (context, imageProvider) => Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
          ),

        ),
        child: Container(
          width: 400.0,
          height: 400.0,
        ),
      ),
      placeholder: (context, url) =>
      const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) =>
          Image.asset('assets/images/movies.png'),

    );
  }

}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:movies/common/response_model.dart';
import 'package:movies/common/utility.dart';
import 'package:movies/movies/bloc/movies_bloc.dart';
import 'package:movies/movies/model/movies_model.dart';
import 'package:movies/common/response_status.dart' as status;
import 'package:movies/movies/ui/movies_detail_view.dart';

class MoviesHomeView extends StatefulWidget {
  const MoviesHomeView({Key? key}) : super(key: key);

  @override
  _MoviesHomeViewState createState() => _MoviesHomeViewState();
}

class _MoviesHomeViewState extends State<MoviesHomeView> {
  late final MoviesBloc _moviesBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        centerTitle: true,
      ),
      body: StreamBuilder<ResponseModel<MoviesModel>>(
          stream: _moviesBloc.moviesModelListController.stream,
          builder: (context, snapshot) {
            ResponseModel<MoviesModel>? _model =
                snapshot.hasData ? snapshot.data : ResponseModel.noData();
            if (_model != null) {
              if (_model.responseStatus == status.ResponseStatus.LOADING) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.blue,
                ));
              } else if (_model.responseStatus ==
                  status.ResponseStatus.SUCCESS) {
                return AnimationLimiter(
                  child: GridView.builder(
                    itemCount: _model.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredGrid(
                          columnCount: 2,
                          position: index,
                          duration: const Duration(seconds: 1),
                          delay: const Duration(milliseconds: 500),
                          child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                  child: _buildMovieCard(_model.data[index]))));
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                  ),
                );
              } else if (_model.responseStatus ==
                  status.ResponseStatus.NO_DATA) {
                return noData(context, _model.message);
              }
              return noData(context, 'No Movies Found');
            } else {
              return noData(context, 'No Movies Found');
            }
          }),
    );
  }

  Widget _buildMovieCard(MoviesModel data) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return MoviesDetailView(moviesModel: data);
        }));
      },
      child: Container(
        height: 140,
        padding: const EdgeInsets.all(0),
        child: Card(
          shadowColor: Colors.grey,
          elevation: 8.0,
          clipBehavior: Clip.antiAlias,
          color: Colors.white,
          child: Stack(children: [
            _getMovieImage(data),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
                child: _getTitleText(data),
              ),
            ),
          ]),
        ),
      ),
    );
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

  Widget _getTitleText(MoviesModel data) {
    return Text(data.title ?? "",
        textAlign: TextAlign.center,
        maxLines: 2,
        style: const TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white));
  }

  Widget noData(BuildContext context, String label) {
    return Center(
      child: Text(
        label,
        style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 15),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _moviesBloc = MoviesBloc();
  }

  @override
  void dispose() {
    super.dispose();
    _moviesBloc.close();
  }
}

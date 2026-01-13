import 'package:movie_app/domain/entities/actor.dart';
import 'package:movie_app/domain/entities/movie_detail.dart';

import '../../domain/entities/movie.dart';
import '../../domain/entities/result.dart';

abstract interface class MovieRepository {
  Future<Result<List<Movie>>> getNowPlaying({int page = 1});
  Future<Result<List<Movie>>> getUpcoming({int page = 1});
  Future<Result<MovieDetail>> getDetail({required int id});
  Future<Result<List<Actor>>> getActors({required int id});
}

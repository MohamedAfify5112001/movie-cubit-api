import 'package:movie_cubit/core/constants/app_constants.dart';

class NowPlayingModel {
  final int id;
  final String backdropPath;
  final String originalTitle;
  final String overview;
  final String releaseDate;

  NowPlayingModel(
      {required this.id,
      required this.backdropPath,
      required this.originalTitle,
      required this.overview,
      required this.releaseDate});

  factory NowPlayingModel.fromJson(Map<String, dynamic> json) =>
      NowPlayingModel(
          id: json['id'],
          backdropPath: AppConstants.imageUrl + json['backdrop_path'],
          originalTitle: json['original_title'],
          overview: json['overview'],
          releaseDate: json['release_date']);
}

import 'package:movie_cubit/model/error_model.dart';

abstract class NowPlayingState {}

class InitNowPlayingState extends NowPlayingState {}

class LoadedNowPlayingState extends NowPlayingState {}

class LoadingNowPlayingState extends NowPlayingState {}

class FailedNowPlayingState extends NowPlayingState {
  final ErrorModel errorModel;

  FailedNowPlayingState(this.errorModel);
}

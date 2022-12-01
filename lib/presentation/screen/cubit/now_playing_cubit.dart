import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_cubit/core/constants/app_constants.dart';
import 'package:movie_cubit/core/network/network_service.dart';
import 'package:movie_cubit/model/error_model.dart';
import 'package:movie_cubit/presentation/screen/cubit/now_playing_state.dart';

import '../../../model/now_playing_model.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {
  List<NowPlayingModel> nowPlayingMovies = [];

  NowPlayingCubit() : super((InitNowPlayingState()));

  void getAllNowPlayingMovies() async {
    Response response =
        await NetworkService.getData(endPoint: AppConstants.nowPlayingEndPoint);
    if (response.statusCode == 200) {
      List result = (response.data["results"]) as List;
      nowPlayingMovies = result
          .map((nowPlayingMovie) => NowPlayingModel.fromJson(nowPlayingMovie))
          .toList();
      emit(LoadedNowPlayingState());
    } else {
      ErrorModel errorModel = ErrorModel(msg: response.data);
      emit(FailedNowPlayingState(errorModel));
    }
  }
}

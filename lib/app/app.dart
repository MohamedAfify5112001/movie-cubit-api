import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_cubit/core/managers/color_manager.dart';
import 'package:movie_cubit/presentation/screen/cubit/now_playing_cubit.dart';
import 'package:movie_cubit/presentation/screen/now_playing_movie_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NowPlayingCubit()..getAllNowPlayingMovies(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.scaffoldColor,
          ),
          cardTheme: CardTheme(
            color: AppColors.greyColor,
          ),
        ),
        home: const NowPlayingMovieScreen(),
      ),
    );
  }
}

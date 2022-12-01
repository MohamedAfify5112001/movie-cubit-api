import 'package:flutter/material.dart';
import 'package:movie_cubit/core/network/network_service.dart';

import 'app/app.dart';

void main() {

  NetworkService.initDio();
  runApp(const MyApp());
}

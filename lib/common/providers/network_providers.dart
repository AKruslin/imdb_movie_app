import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_app/common/network/rest_client.dart';
import 'package:test_app/features/home/data/repository/movie_repository.dart';

final restCientProvider = Provider<RestClient>(
  (ref) => RestClient(ref.watch(dioProvider)),
);

final dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(baseUrl: 'https://api.themoviedb.org/3'),
  )..interceptors.addAll(
      [
        PrettyDioLogger(requestHeader: true, requestBody: true),
      ],
    ),
);

final movieRepository =
    Provider((ref) => MovieRepositoryImpl(restClient: ref.read(restCientProvider)));

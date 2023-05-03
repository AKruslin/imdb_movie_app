import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/app_consts.dart' as consts;
import 'package:test_app/common/app_font_styles.dart' as fontstyle;
import 'package:test_app/common/providers/movie_details_provider.dart';
import 'package:test_app/common/widgets/custom_back_arrow.dart';
import 'package:test_app/features/home/data/model/movie_details.dart';
import 'package:test_app/features/home/presentation/widgets/movie_details_body.dart';

class MovieDetailsPage extends ConsumerWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<MovieDetails?> movieDetailsFuture =
        ref.watch(movieDetailsFutureProvider);
    return Scaffold(
      body: movieDetailsFuture.when(
          loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
          error: (error, _) {
            return Center(
              child: Text(
                error.toString(),
                style: fontstyle.heading1,
              ),
            );
          },
          data: (data) {
            return data == null
                ? Center(
                    child: Text(
                      consts.movieNotFound,
                      style: fontstyle.heading1,
                    ),
                  )
                : Stack(
                    children: [
                      Image.network(
                        consts.imageW500 + data.image,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      SafeArea(
                        bottom: false,
                        child: Column(
                          children: [
                            Container(
                              height: 314,
                              alignment: Alignment.topLeft,
                              child: const CustomBackArrow(),
                            ),
                            MovieDetailsBody(data: data),
                          ],
                        ),
                      )
                    ],
                  );
          }),
    );
  }
}

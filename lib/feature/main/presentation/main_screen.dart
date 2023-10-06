import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mega/feature/main/presentation/widget/cubit/get_movies_cubit.dart';
import 'package:test_mega/feature/main/presentation/widget/widget_home.dart';
import 'package:test_mega/server/service_locator.dart';
import 'package:test_mega/widgets/app_error_text.dart';
import 'package:test_mega/widgets/app_indicator.dart';
import 'package:test_mega/widgets/custom_text_field.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetMoviesCubit>(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Builder(
                  builder: (context) => CustomTextField(
                    onChanged: (name) {
                      context.read<GetMoviesCubit>().searchByName(name: name);
                    },
                    hintText: 'Search',
                    // prefix: Icon(
                    //   Icons.search,
                    //   color: AppColors.lightGrey,
                    // ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<GetMoviesCubit, GetMoviesState>(
                    builder: (context, state) {
                      return state.when(
                        loading: () => const AppIndicator(),
                        error: (error) => AppErrorText(
                          error: error,
                          onPress: () {
                            context.read<GetMoviesCubit>().getMovies();
                          },
                        ),
                        success: (model) {
                          return ListView.separated(
                            controller:
                                context.read<GetMoviesCubit>().scrollController,
                            shrinkWrap: true,
                            itemCount: model.movies.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 16),
                            itemBuilder: (context, index) => WidgetHome(
                              model: model.movies[index],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

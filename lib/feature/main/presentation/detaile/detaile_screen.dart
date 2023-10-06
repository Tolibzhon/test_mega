import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_mega/feature/main/data/models/movies_model.dart';
import 'package:test_mega/theme/app_colors.dart';
import 'package:test_mega/theme/app_text_styles.dart';
import 'package:test_mega/widgets/spaces.dart';

@RoutePage()
class DetaileScreen extends StatelessWidget {
  const DetaileScreen({super.key, required this.model});
  final MovieDetailModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 500,
            width: context.width,
            decoration: BoxDecoration(
              color: Colors.black12,
              image: DecorationImage(
                image: NetworkImage(
                  model.poster,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const SafeArea(
              child: BackButton(color: Colors.white),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 10),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Text(
                    model.name,
                    style: AppTextStyles.s24W600(color: AppColors.white),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Ratings: ${model.rating}',
                    style: AppTextStyles.s16W400(color: AppColors.lightGrey),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    children: model.genres
                        .map<Widget>(
                          (e) => Text(
                            '$e, ',
                            style: AppTextStyles.s16W400(
                                color: AppColors.lightGrey),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    children: model.countries
                        .map<Widget>(
                          (e) => Text(
                            '$e, ',
                            style: AppTextStyles.s16W400(
                                color: AppColors.lightGrey),
                          ),
                        )
                        .toList(),
                  ),
                  Text(
                    '${model.year} год.',
                    style: AppTextStyles.s16W400(color: AppColors.lightGrey),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    model.description,
                    style: AppTextStyles.s13W400(color: Colors.white),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

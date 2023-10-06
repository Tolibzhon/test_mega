import 'package:flutter/material.dart';
import 'package:test_mega/feature/main/data/models/movies_model.dart';
import 'package:test_mega/core/functions/push_router_func.dart';
import 'package:test_mega/routes/mobile_auto_router.gr.dart';
import 'package:test_mega/theme/app_colors.dart';
import 'package:test_mega/theme/app_text_styles.dart';

class WidgetHome extends StatelessWidget {
  const WidgetHome({
    super.key,
    required this.model,
  });
  final MovieDetailModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppRouting.pushFunction(DetaileRoute(model: model));
        // context.router.push(DetaileRoute(model: model));
      },
      child: Row(
        children: [
          Container(
            width: 55,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage(model.poster),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: AppTextStyles.s16W500(color: AppColors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                SizedBox(
                  height: 20,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: model.genres.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 2),
                    itemBuilder: (context, index) => Text(
                      '${model.genres[index]},',
                      style: AppTextStyles.s12W500(color: AppColors.lightGrey),
                    ),
                  ),
                ),
                Text(
                  '${model.year}год, ${model.countries.first}',
                  style: AppTextStyles.s12W400(color: AppColors.lightGrey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

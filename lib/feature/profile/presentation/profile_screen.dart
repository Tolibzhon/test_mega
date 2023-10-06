import 'package:flutter/material.dart';
import 'package:test_mega/core/constants/app_text_constants.dart';
import 'package:test_mega/theme/app_colors.dart';
import 'package:test_mega/theme/app_text_styles.dart';
import 'package:test_mega/widgets/spaces.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.black12,
              backgroundImage: NetworkImage(
                AppTextConstants.emptyImage,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Sidikov Tolibzhon',
              style: AppTextStyles.s24W600(color: Colors.white),
            ),
            Text(
              'sidikovtolibjon2000@gmail.com',
              style: AppTextStyles.s16W400(color: Colors.white),
            ),
            const Divider(
              thickness: 0.5,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: context.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.colorLightBlue),
              child: Row(
                children: [
                  const Icon(Icons.portrait),
                  const SizedBox(width: 12),
                  Text(
                    'Редактировать',
                    style: AppTextStyles.s16W400(color: Colors.black),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: context.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.colorLightBlue),
              child: Row(
                children: [
                  const Icon(Icons.bookmark),
                  const SizedBox(width: 12),
                  Text(
                    'Избранные',
                    style: AppTextStyles.s16W400(color: Colors.black),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

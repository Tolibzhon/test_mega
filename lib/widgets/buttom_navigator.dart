import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_mega/feature/main/presentation/main_screen.dart';
import 'package:test_mega/feature/profile/presentation/profile_screen.dart';
import 'package:test_mega/theme/app_colors.dart';

@RoutePage()
class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({Key? key, this.index = 0}) : super(key: key);
  final int index;

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigatorScreen> {
  late int index = widget.index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.color0B1E2DBg2,
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.color0B1E2DBg2,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 13,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
          selectedItemColor: AppColors.color43D049Green,
          unselectedItemColor: AppColors.grey,
          currentIndex: index,
          onTap: (indexFrom) async {
            setState(() {
              index = indexFrom;
            });
          },
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home_filled,
                color: AppColors.color43D049Green,
              ),
              icon: Icon(
                Icons.home_filled,
                color: AppColors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.manage_accounts,
                color: AppColors.color43D049Green,
              ),
              icon: Icon(
                Icons.manage_accounts,
                color: AppColors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> pages = [
  const MainScreen(),
  const ProfileScreen(),
];

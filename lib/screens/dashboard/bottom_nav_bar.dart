import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutasapp/screens/dashboard/dashboard_screen.dart';
import 'package:sutasapp/screens/profile/profile_page.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, -5),
                blurRadius: 15,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            child: NavigationBar(
              height: 80,
              elevation: 0,
              backgroundColor: Colors.white,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.report), label: 'Lapor Bencana'),
                NavigationDestination(
                    icon: Icon(Icons.person_2_rounded), label: 'Profile'),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const DashboardScreen(), Container(), const ProfileScreen()];
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:day_tasks/Core/constant/color.dart';
import 'package:day_tasks/Views/Home/Home_Screen.dart';
import 'package:day_tasks/Views/Messages/chat_messages.dart';
import 'package:day_tasks/Views/Schedule_screen.dart';

class CustomNavigationButton extends StatelessWidget {
  final int currentIndex;
  
  const CustomNavigationButton({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: MediaQuery.of(context).size.height * 0.1,
      elevation: 0.0,
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        _handleNavigation(index, context);
      },
      destinations: [
        NavigationDestination(
          icon: IconButton(
            onPressed: () => Get.to(() => Home_Screen()),
            icon: const Icon(Icons.home_filled),
          ),
          label: "Home",
        ),
        NavigationDestination(
          icon: IconButton(
            onPressed: () => Get.to(() =>  chat_messages()),
            icon: const Icon(Icons.chat_rounded),
          ),
          label: "Chat",
        ),
        NavigationDestination(
          icon: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.15,
              color: springYellow,
              child: Center(
                child: Icon(
                  Icons.add_box_outlined,
                  size: MediaQuery.of(context).size.width * 0.09,
                ),
              ),
            ),
          ),
          label: '',
        ),
        NavigationDestination(
          icon: IconButton(
            onPressed: () => Get.to(() =>  schedule()),
            icon: const Icon(Icons.calendar_month_rounded),
          ),
          label: "Calendar",
        ),
        NavigationDestination(
          icon: IconButton(
            onPressed: () {
              // Handle notifications
            },
            icon: const Icon(Icons.notifications_active),
          ),
          label: "Notifications",
        ),
      ],
    );
  }

  void _handleNavigation(int index, BuildContext context) {
    switch (index) {
      case 0:
        Get.to(() => Home_Screen());
        break;
      case 1:
        Get.to(() => chat_messages());
        break;
      case 2:
        // Handle add task action
        break;
      case 3:
        Get.to(() =>  schedule());
        break;
      case 4:
        // Handle notifications
        break;
    }
  }
}
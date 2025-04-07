import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smkdev_hospital/booking/booking_page.dart';
import 'package:smkdev_hospital/home/home_page.dart';
import 'package:smkdev_hospital/service/service_page.dart';
import 'package:smkdev_hospital/more/more_page.dart';
import 'package:smkdev_hospital/profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  var _bottomNavIndex = 0;
  late AnimationController _fabAnimationController;
  late AnimationController _hideBottomBarAnimationController;

  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.medical_services_outlined,
    Icons.person_outline,
    Icons.more_vert_outlined,
  ];

  final labelList = ['Home', 'Layanan', 'Booking', 'Profil'];

  final List<Widget> pageList = [
    const HomePage(),
    const LayananPage(),
    // const BookingPage(),
    const ProfilePage(),
    const MorePage(),
  ];

  @override
  void initState() {
    super.initState();

    _fabAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _hideBottomBarAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _fabAnimationController.forward();
  }

  bool onScrollNotification(ScrollNotification notification) {
    if (notification is UserScrollNotification &&
        notification.metrics.axis == Axis.vertical) {
      if (notification.direction == ScrollDirection.forward) {
        _hideBottomBarAnimationController.reverse();
        _fabAnimationController.forward();
      } else if (notification.direction == ScrollDirection.reverse) {
        _hideBottomBarAnimationController.forward();
        _fabAnimationController.reverse();
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: NotificationListener<ScrollNotification>(
        onNotification: onScrollNotification,
        child: pageList[_bottomNavIndex],
      ),
      floatingActionButton: FadeTransition(
        opacity: _fabAnimationController,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: Colors.blue,
          elevation: 6,
          child: const Icon(Icons.calendar_today_outlined, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BookingPage(),
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.blue : Colors.grey;
          return Icon(iconList[index], size: 24, color: color);
        },
        backgroundColor: Colors.white,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        leftCornerRadius: 24,
        rightCornerRadius: 24,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        hideAnimationController: _hideBottomBarAnimationController,
        shadow: const BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 12,
          spreadRadius: 0.5,
          color: Colors.grey,
        ),
      ),
    );
  }
}

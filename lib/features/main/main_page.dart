import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smkdev_hospital/features/booking/booking_page.dart';
import 'package:smkdev_hospital/features/home/home_page.dart';
import 'package:smkdev_hospital/features/more/about_us_page.dart';
import 'package:smkdev_hospital/features/partnercareer/partner_career_page.dart';
import 'package:smkdev_hospital/features/service/service_page.dart';
import 'package:smkdev_hospital/features/more/more_page.dart';
import 'package:smkdev_hospital/features/profile/profile_page.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  var _bottomNavIndex = 0;
  late AnimationController _fabAnimationController;
  late AnimationController _hideBottomBarAnimationController;
  late AnimationController _moreMenuController;
  bool showMoreMenu = false;

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

    _moreMenuController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  bool onScrollNotification(ScrollNotification notification) {
    // only close menu on direct user scroll start (touch interaction)
    if (notification is ScrollStartNotification &&
        notification.metrics.axis == Axis.vertical) {
      if (showMoreMenu) {
        setState(() {
          showMoreMenu = false;
          _moreMenuController.reverse();
        });
      }
    }
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
  void dispose() {
    _fabAnimationController.dispose();
    _hideBottomBarAnimationController.dispose();
    _moreMenuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          NotificationListener<ScrollNotification>(
            onNotification: onScrollNotification,
            child: pageList[_bottomNavIndex],
          ),
          if (showMoreMenu)
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                setState(() {
                  showMoreMenu = false;
                  _moreMenuController.reverse();
                });
              },
            ),
          if (showMoreMenu)
            Positioned(
              right: 16,
              bottom: 80,
              child: _MoreFloatingMenu(
                controller: _moreMenuController,
                onItemTap: (index) {
                  setState(() {
                    showMoreMenu = false;
                    _moreMenuController.reverse();
                  });

                  switch (index) {
                    case 0:
                      // Feedback
                      print('Navigate to Feedback Page');
                      break;
                    case 1:
                      // Event & Promo
                      print('Navigate to Event & Promo Page');
                      break;
                    case 2:
                      // Partner & Career
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PartnerCareerPage(),
                        ),
                      );
                      break;
                    case 3:
                      // Tentang Kami
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutUsPage(),
                        ),
                      );
                      break;
                  }
                },
              ),
            ),
        ],
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
        onTap: (index) {
          if (index == 3) {
            setState(() {
              showMoreMenu = !showMoreMenu;
              if (showMoreMenu) {
                _moreMenuController.forward(from: 0);
              } else {
                _moreMenuController.reverse();
              }
            });
          } else {
            setState(() {
              showMoreMenu = false;
              _moreMenuController.reverse();
              _bottomNavIndex = index;
            });
          }
        },
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

class _MoreFloatingMenu extends StatelessWidget {
  final AnimationController controller;
  final void Function(int index) onItemTap;

  const _MoreFloatingMenu({
    super.key,
    required this.controller,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.favorite_border, 'label': 'Feedback'},
      {'icon': Icons.star_border, 'label': 'Event & Promo'},
      {'icon': Icons.work_outline, 'label': 'Partner & Career'},
      {'icon': Icons.people_outline, 'label': 'Tentang Kami'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(items.length, (i) {
        final index = items.length - 1 - i;
        final animation = Tween<Offset>(
          begin: const Offset(0, 0.2),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(i * 0.1, 1.0, curve: Curves.easeOut),
          ),
        );

        final fade = CurvedAnimation(
          parent: controller,
          curve: Interval(i * 0.1, 1.0, curve: Curves.easeOut),
        );

        return SlideTransition(
          position: animation,
          child: FadeTransition(
            opacity: fade,
            child: GestureDetector(
              onTap: () => onItemTap(index),
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(items[index]['icon'] as IconData, color: Colors.blue),
                    const SizedBox(width: 8),
                    Text(
                      items[index]['label'] as String,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

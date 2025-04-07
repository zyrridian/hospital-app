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
                onItemTap: () {
                  setState(() {
                    showMoreMenu = false;
                    _moreMenuController.reverse();
                  });
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

class MoreMenuSheet extends StatelessWidget {
  const MoreMenuSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _MoreMenuItem(icon: Icons.people_alt_outlined, text: 'Tentang Kami'),
          _MoreMenuItem(icon: Icons.work_outline, text: 'Partner & Career'),
          _MoreMenuItem(icon: Icons.star_border, text: 'Event & Promo'),
          _MoreMenuItem(icon: Icons.favorite_border, text: 'Feedback'),
        ],
      ),
    );
  }
}

class _MoreMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _MoreMenuItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        title: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
        trailing: Icon(icon, color: Colors.blue),
        onTap: () {
          // Handle tap (e.g., navigate to new screen or show toast)
          Navigator.pop(context); // Close modal
        },
      ),
    );
  }
}

class _MoreFloatingMenu extends StatelessWidget {
  final AnimationController controller;
  final VoidCallback onItemTap;

  const _MoreFloatingMenu({
    super.key,
    required this.controller,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.people_outline, 'label': 'Tentang Kami'},
      {'icon': Icons.work_outline, 'label': 'Partner & Career'},
      {'icon': Icons.star_border, 'label': 'Event & Promo'},
      {'icon': Icons.favorite_border, 'label': 'Feedback'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(items.length, (i) {
        // Animate bottom-to-top
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
              onTap: onItemTap,
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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

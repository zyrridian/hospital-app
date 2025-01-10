import 'package:flutter/material.dart';
import 'package:smkdev_hospital/booking/booking.dart';
import 'package:smkdev_hospital/home/home.dart';
import 'package:smkdev_hospital/layanan/layanan.dart';
import 'package:smkdev_hospital/more/more.dart';
import 'package:smkdev_hospital/profile/profile.dart';


class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {

  int _bottomNavCurrentIndex = 0;
  List _container = [
    HomePage(),
    LayananPage(),
    BookingPage(),
    ProfilePage(),
    MorePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 35,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home_outlined, color: Colors.blue),
          icon: Icon(Icons.home_outlined, color: Colors.grey),
          label: 'Home'
        ),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.medical_services_outlined, color: Colors.blue),
            icon: Icon(Icons.medical_services_outlined, color: Colors.grey),
            label: 'Layanan'
        ),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.calendar_today_outlined, color: Colors.blue),
            icon: Icon(Icons.calendar_today_outlined, color: Colors.grey),
            label: 'Booking'
        ),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.person_outline, color: Colors.blue),
            icon: Icon(Icons.person_outline, color: Colors.grey),
            label: 'profile'
        ),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.more, color: Colors.blue),
            icon: Icon(Icons.more, color: Colors.grey),
            label: 'More'
        ),
      ],
    );
  }

}

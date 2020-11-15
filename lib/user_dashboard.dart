import 'package:flutter/material.dart';
import 'file:///D:/Project/FlutterProject/smkdev_hospital/lib/booking/booking.dart';
import 'file:///D:/Project/FlutterProject/smkdev_hospital/lib/home/home.dart';
import 'file:///D:/Project/FlutterProject/smkdev_hospital/lib/layanan/layanan.dart';
import 'file:///D:/Project/FlutterProject/smkdev_hospital/lib/more/more.dart';
import 'file:///D:/Project/FlutterProject/smkdev_hospital/lib/profile/profile.dart';


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

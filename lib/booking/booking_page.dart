import 'package:flutter/material.dart';
import 'package:smkdev_hospital/booking/booking_data.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 24,
                  bottom: 16,
                ),
                child: Text(
                  'Booking',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return InkWell(
                    onTap: () {},
                    child: _buildBookingItem(doctor),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookingItem(Map<String, String> doctor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage('assets/images/test.png'),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctor['name'] ?? 'noname',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              Text(doctor['specialty'] ?? 'nodesc'),
            ],
          )
        ],
      ),
    );
  }
}

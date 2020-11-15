import 'package:flutter/material.dart';

import 'package:smkdev_hospital/booking/booking_model.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  List<Booking>_bookingList = [];

  @override
  void initState() {
    super.initState();

    _bookingList.add(Booking(
        title: "Dokter 1",
        desc: "Umum",
        image: 'assets/images/test.png'
    ));

    _bookingList.add(Booking(
      title: "Dokter 2",
      desc: "Umum",
      image: 'assets/images/test.png'
    ));
    _bookingList.add(Booking(
        title: "Dokter 3",
        desc: "Umum",
        image: 'assets/images/test.png'
    ));
    _bookingList.add(Booking(
        title: "Dokter 4",
        desc: "Umum",
        image: 'assets/images/test.png'
    ));
    _bookingList.add(Booking(
        title: "Dokter 5",
        desc: "Umum",
        image: 'assets/images/test.png'
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

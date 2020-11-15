import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:smkdev_hospital/layanan/layanan_appbar.dart';
import 'package:smkdev_hospital/layanan/layanan_model.dart';

class LayananPage extends StatefulWidget {
  @override
  _LayananPageState createState() => _LayananPageState();
}

class _LayananPageState extends State<LayananPage> {
  List<FasilitasDanLayananTerkini> _fasilitasDanLayananTerkini = [];
  List<EventDanPromo> _eventDanPromo = [];

  @override
  void initState() {
    super.initState();

    _fasilitasDanLayananTerkini.add(FasilitasDanLayananTerkini(
        title: 'smkdev', image: 'assets/images/test.png'));
    _fasilitasDanLayananTerkini.add(FasilitasDanLayananTerkini(
        title: 'smkdev', image: 'assets/images/test.png'));
    _fasilitasDanLayananTerkini.add(FasilitasDanLayananTerkini(
        title: 'smkdev', image: 'assets/images/test.png'));
    _fasilitasDanLayananTerkini.add(FasilitasDanLayananTerkini(
        title: 'smkdev', image: 'assets/images/test.png'));
    _fasilitasDanLayananTerkini.add(FasilitasDanLayananTerkini(
        title: 'smkdev', image: 'assets/images/test.png'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: LayananAppBar(),
        backgroundColor: Colors.white,
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
                color: Colors.white,
                child: Column(
                  children: [
                    _buildSearchBar(),
                    _buildFasilitasDanLayananTerkini(),
                    _buildEventDanPromo()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.only(top: 25.0, bottom: 25.0),
      // height: 100.0,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        child: TextField(
          // controller: TextEditingController(text: locations[1]),
          // style: dropDo,
          cursorColor: Colors.orangeAccent,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
              suffixIcon: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                child: Icon(Icons.search, color: Colors.black),
              )),
        ),
      ),
    );
  }

  Widget _buildFasilitasDanLayananTerkini() {
    return Container(
      margin: EdgeInsets.only(top: 25.0, bottom: 25.0),
      height: 1000.0,
      color: Colors.lightGreenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Fasilitas dan Layanan Terkini",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200.0,
            child: Material(
              borderRadius: BorderRadius.circular(30.0),
              child: ListView.builder(
                itemCount: _fasilitasDanLayananTerkini.length,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _rowFasilitasDanLayananTerkini(
                      _fasilitasDanLayananTerkini[index]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildEventDanPromo() {
    return Container(
      height: 1000.0,
      padding: EdgeInsets.all(25.0),
      color: Colors.lightGreenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Event Dan Promo",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Colors.blue),
            child: Image.asset(
              "assets/images/test.png",
              fit: BoxFit.cover,
              // fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 100.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget _rowFasilitasDanLayananTerkini(
      FasilitasDanLayananTerkini fasilitasDanLayananTerkini) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
      margin: EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset(
              fasilitasDanLayananTerkini.image,
              width: 200.0,
              height: 200.0,
            ),
          ),
          // Padding(padding: EdgeInsets.only(top: 8.0)),
          // Text(fasilitasDanLayananTerkini.title)
        ],
      ),
    );
  }

  Widget _rowEventDanPromo() {
    return Container();
  }
}

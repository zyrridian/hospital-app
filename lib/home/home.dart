import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:smkdev_hospital/home/home_appbar.dart';
import 'package:smkdev_hospital/constant.dart';
import 'package:smkdev_hospital/home/home_model.dart';
import 'package:smkdev_hospital/layanan/layanan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TentangKamiOverview> _tentangKamiOverview = [];

  @override
  void initState() {
    super.initState();

    _tentangKamiOverview.add(TentangKamiOverview(
        title: 'Dr. Setiawai, SpM',
        desc: 'Katarak dan Bedah Refraktif',
        image: 'assets/images/test.png'));
    _tentangKamiOverview.add(TentangKamiOverview(
        title: 'Dr. Angger Pribadi, SpMM',
        desc: 'Vitreo Retina',
        image: 'assets/images/test.png'));
    _tentangKamiOverview.add(TentangKamiOverview(
        title: 'Dr. Angger Pribadi, SpMM',
        desc: 'Vitreo Retina',
        image: 'assets/images/test.png'));
    _tentangKamiOverview.add(TentangKamiOverview(
        title: 'Dr. Angger Pribadi, SpMM',
        desc: 'Vitreo Retina',
        image: 'assets/images/test.png'));
    _tentangKamiOverview.add(TentangKamiOverview(
        title: 'Dr. Angger Pribadi, SpMM',
        desc: 'Vitreo Retina',
        image: 'assets/images/test.png'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // appBar: HomeAppBar(),
        backgroundColor: Colors.white,
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                // padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                color: Colors.white,
                child: Column(
                  children: [
                    _buildCarousel(),
                    _buildMap(),
                    _buildTentangKamiOverview(),
                    _buildBeritaTerbaruOverview(),
                    _buildKontakDanPengaduanOverview()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Ini adalah fungsi untuk membuat bagian bagian tertentu pada halaman home
  Widget _buildCarousel() {
    return SizedBox(
      height: 250.0,
      child: Carousel(
        images: [
          AssetImage("assets/images/sekilas.png"),
          AssetImage("assets/images/sekilas.png"),
          AssetImage("assets/images/sekilas.png"),
          AssetImage("assets/images/sekilas.png"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
        dotSize: 5.0,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return SizedBox(
        height: 150.0,
        width: 300.0,
        child: Carousel(
          images: [
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
            // ExactAssetImage("assets/images/LaunchImage.jpg")
          ],
        ));
    // return Container(height: 270.0, color: Colors.grey);
  }

  Widget _buildMap() {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              // height: 300.0,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 3.0,
                color: Colors.white,
                // margin: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 0.0),
                    Image.asset("assets/images/test.png"),
                    // SizedBox(height: 0.0),
                    Row(
                      children: [
                        // SizedBox(height: 16.0),
                        Text('aaa'),
                        // SizedBox(height: 16.0),
                        Text('aaa'),
                      ],
                    ),
                    // SizedBox(height: 16.0,)
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rumah Sakit SMKDEV",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Jln. Margacinta No. 29"),
                  Text("Senin - Jumat: 08.00 - 20.00"),
                  Text("Sabtu: 08.:00 - 17.00"),
                  Padding(padding: const EdgeInsets.only(top: 15.0)),
                  Text("Klinik SMKDEV",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Jl. Mars Barat I No. 9"),
                  Text("Senin - Jumat: 08.00 - 20.00"),
                  Text("Sabtu: 08.00 - 13.00"),
                  Padding(padding: const EdgeInsets.only(top: 15.0)),
                  Text("BPJS", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Senin - Jumat: 07.00 - 14.00, 16.00 - 19.00"),
                  Text("Sabtu: 07.00 - 12.00"),
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildTentangKamiOverview() {
    return Container(
      padding: EdgeInsets.all(20.0),
      // height: 300.0,
      color: Colors.blue,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tentang Kami',
                  style: TextStyle(fontSize: 16.0, color: Colors.white)),
              Text('Selengkapnya',
                  style: TextStyle(fontSize: 10.0, color: Colors.white))
            ],
          ),
          SizedBox(
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 3.0,
              color: Colors.white,
              margin: EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/test.png'),
                ],
              ),
            ),
          ),
          // Container(
          //     child: Expanded(
          //       // height: 400.0,
          //       child: ListView.builder(
          //           shrinkWrap: true,
          //           itemCount: _tentangKamiOverview.length,
          //           padding: EdgeInsets.only(top: 12.0),
          //           physics: ClampingScrollPhysics(),
          //           scrollDirection: Axis.horizontal,
          //           itemBuilder: (context, index) {
          //             return _rowTentangKamiOverview(
          //                 _tentangKamiOverview[index]);
          //           }),
          //     ),
          // )
        ],
      ),
    );
  }

  Widget _buildBeritaTerbaruOverview() {
    return Container(
      height: 300.0,
      color: Colors.white,
    );
  }

  Widget _buildKontakDanPengaduanOverview() {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Kontak & Pengaduan',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          Divider(height: 15.0),
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.grey),

                ],
              ),
              Column(
                children: [
                  Text('Rumah Sakit SMKDEV',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold)),
                  Text('Jl. Margacinta No. 29')
                ],
              )
            ],
          ),
          Divider(height: 12.0),
          Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => new LayananPage()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.mail_outline, color: Colors.grey),
                      Text('info@smk.dev', style: TextStyle(fontSize: 12.0)),
                    ],
                  ))
            ],
          ),
          Divider(height: 12.0),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => new LayananPage()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.phone_outlined, color: Colors.grey),
                          Text('+622 7000 0000')
                        ],
                      )
                  ),
                  SizedBox(width: 5.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => new LayananPage()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.apartment_outlined, color: Colors.grey),
                        Text('+622 7000 0000')
                      ],
                    ),
                  )
                ],
              )
            ],
          )

          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Icon(Icons.location_on_outlined, color: Colors.grey),
          //         Icon(Icons.mail_outline, color: Colors.grey),
          //         Icon(Icons.phone_outlined, color: Colors.grey)
          //       ],
          //     ),
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text('Rumah Sakit SMKDEV', style: TextStyle(fontWeight: FontWeight.bold)),
          //         Text('Jl. Margacinta No. 29', style: TextStyle(fontSize: 10.0)),
          //         Divider(height: 12.0),
          //         Text('info@smk.dev', style: TextStyle(fontSize: 10.0)),
          //         Row(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text('+622 7000 0000'),
          //             Icon(Icons.apartment_outlined, color: Colors.grey),
          //             Text('+622 7000 0000')
          //           ],
          //         )
          //       ],
          //     )
          //   ],
          // )
        ],
      ),
    );
  }

  // Row
  Widget _rowTentangKamiOverview(TentangKamiOverview tentangKamiOverview) {
    return Container(
        child: SizedBox(
            child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 3.0,
                color: Colors.white,
                margin: EdgeInsets.only(top: 15.0, right: 15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          tentangKamiOverview.image,
                          height: 200.0,
                          width: 150.0,
                        ),
                      ),
                      Text(
                        tentangKamiOverview.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(tentangKamiOverview.desc)
                    ]))));
  }
}

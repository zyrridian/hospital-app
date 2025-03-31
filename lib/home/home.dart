import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';
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

  int _currentIndex = 0;
  List<Map<String, String>> carouselData = [
    {
      'title': 'Sekilas Tentang\nRS. SMKDEV',
      'description':
          'SMKDEV komunitas developer siswa SMK jurusan Rekayasa Perangkat Lunak (RPL), Teknik Komputer dan Jaringan (TKJ), dan Multimedia (MM) dari seluruh Indonesia.',
      'buttonText': 'Read'
    },
    {
      'title': 'Layanan Kesehatan\nModern',
      'description':
          'Kami menyediakan layanan kesehatan berbasis teknologi terkini untuk memastikan pengalaman medis yang nyaman dan cepat.',
      'buttonText': 'Learn More'
    },
    {
      'title': 'Gabung dengan\nSMKDEV',
      'description':
          'SMKDEV membuka peluang bagi siswa untuk belajar dan berkembang dalam komunitas yang mendukung pertumbuhan profesional.',
      'buttonText': 'Join Us'
    }
  ];

  final Map<String, dynamic> mapData = {
    'title': 'Temui Kami',
    'image': 'assets/images/map.png',
    'locations': [
      {
        'name': 'Rumah Sakit SMKDEV',
        'address': 'Jln. Margacinta No. 29',
        'hours': ['Senin - Jumat: 08.00 - 20.00', 'Sabtu: 08.00 - 17.00']
      },
      {
        'name': 'Klinik SMKDEV',
        'address': 'Jl. Mars Barat I No. 9',
        'hours': ['Senin - Jumat: 08.00 - 20.00', 'Sabtu: 08.00 - 13.00']
      },
      {
        'name': 'BPJS',
        'hours': [
          'Senin - Jumat: 07.00 - 14.00, 16.00 - 19.00',
          'Sabtu: 07.00 - 12.00'
        ]
      }
    ]
  };

  final List<Map<String, String>> doctorData = [
    {
      'name': 'dr. Setiawai, SpM',
      'specialty': 'Katarak dan Bedah Refraktif',
      'image': 'assets/images/test.png'
    },
    {
      'name': 'dr. Angger Pribadi, SpMM',
      'specialty': 'Vitreo Retina',
      'image': 'assets/images/test.png'
    },
    {
      'name': 'dr. Daffa, SpA',
      'specialty': 'Pediatrik',
      'image': 'assets/images/test.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Container(
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
    );
  }

  Widget _buildCarousel() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            CarouselSlider.builder(
              itemCount: carouselData.length,
              options: CarouselOptions(
                height: 250.0,
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              itemBuilder: (context, index, realIndex) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: _buildCarouselItem(carouselData[index]),
                );
              },
            ),
          ],
        ),
        _buildCarouselIndicator(),
      ],
    );
  }

  Widget _buildCarouselItem(Map<String, String> data) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(
            data['title'] ?? '',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            data['description'] ?? '',
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 48),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  data['buttonText'] ?? 'Read',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCarouselIndicator() {
    return Positioned(
      left: 16,
      bottom: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: carouselData.asMap().entries.map((entry) {
          bool isSelected = _currentIndex == entry.key;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isSelected ? 16.0 : 8.0,
            height: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4),
              color: isSelected ? Colors.blue : Colors.grey,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildMap() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              mapData['title'],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Image.asset(
            mapData['image'],
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: mapData['locations'].map<Widget>((location) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    if (location.containsKey('address'))
                      Text(location['address']),
                    ...location['hours'].map<Widget>((hour) => Text(hour)),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildTentangKamiOverview() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      color: Colors.blue,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tentang Kami',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Selengkapnya',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.white,
              elevation: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/test.png'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 250,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              itemCount: doctorData.length,
              itemBuilder: (context, index) {
                final doctor = doctorData[index];
                return _buildDoctorCard(doctor);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorCard(Map<String, String> doctor) {
    return Container(
      width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                doctor['image'] ?? 'assets/images/test.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor['name'] ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    doctor['specialty'] ?? '',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
      padding: const EdgeInsets.all(20.0),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Kontak & Pengaduan',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          const Divider(height: 15.0),
          const Row(
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
          const Divider(height: 12.0),
          Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new LayananPage()));
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.mail_outline, color: Colors.grey),
                      Text('info@smk.dev', style: TextStyle(fontSize: 12.0)),
                    ],
                  ))
            ],
          ),
          const Divider(height: 12.0),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new LayananPage()));
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.phone_outlined, color: Colors.grey),
                          Text('+622 7000 0000')
                        ],
                      )),
                  SizedBox(width: 5.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new LayananPage()));
                    },
                    child: const Row(
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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smkdev_hospital/home/home_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                _buildCarousel(),
                _buildMap(),
                _buildAboutUs(),
                _buildNewsSection(),
                _buildContact(),
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

  Widget _buildAboutUs() {
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
        color: Colors.white,
        // elevation: 0,
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
              padding: const EdgeInsets.all(16.0),
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
                  const SizedBox(height: 8),
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

  Widget _buildNewsSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Berita Terbaru',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Selengkapnya',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 240,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              itemCount: newsData.length,
              itemBuilder: (context, index) {
                final news = newsData[index];
                return _buildNewsItem(news);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsItem(Map<String, String> news) {
    return Container(
      width: 240,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                news['image'] ?? 'assets/images/test.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news['title'] ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    news['content'] ?? '',
                    maxLines: 2,
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

  Widget _buildContact() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kontak & Pengaduan',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 12.0),
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: Colors.grey),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rumah Sakit SMKDEV',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Jl. Margacinta No. 29',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 12.0),
          Row(
            children: [
              Icon(Icons.mail_outline, color: Colors.grey),
              SizedBox(width: 8.0),
              Text('info@smk.dev', style: TextStyle(fontSize: 12)),
            ],
          ),
          SizedBox(height: 12.0),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.phone_outlined, color: Colors.grey),
                  SizedBox(width: 8.0),
                  Text('+62 7000 0000', style: TextStyle(fontSize: 12))
                ],
              ),
              SizedBox(width: 24.0),
              Row(
                children: [
                  Icon(Icons.apartment_outlined, color: Colors.grey),
                  SizedBox(width: 8.0),
                  Text('+62 7000 0000', style: TextStyle(fontSize: 12))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

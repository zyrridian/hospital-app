import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smkdev_hospital/features/service/service_data.dart';
import 'package:smkdev_hospital/features/service/service_detail_page.dart';

@RoutePage()
class LayananPage extends StatefulWidget {
  const LayananPage({super.key});

  @override
  State<LayananPage> createState() => _LayananPageState();
}

class _LayananPageState extends State<LayananPage> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAppBar(),
                _buildSearchBar(),
                _buildFacilitySection(),
                _buildEventPromoSection()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return const Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Text(
        'Layanan',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.only(
        top: 24.0,
        left: 16,
        right: 16,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.grey.withOpacity(0.6)),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                cursorColor: Colors.blue,
                style: const TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search dokter, fasilitas & layanan',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFacilitySection() {
    return Container(
      padding: const EdgeInsets.only(top: 24.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Fasilitas dan Layanan Terkini',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 200.0,
            child: ListView.builder(
              itemCount: facilityData.length,
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final facility = facilityData[index];
                return InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ServiceDetailPage(
                          type: 'facility',
                          title: facility['title'] ?? '',
                          content: facility['content'] ?? '',
                          date: facility['date'] ?? '',
                          image: facility['image'] ?? '',
                          meta: facility['meta'] ?? '',
                        ),
                      ),
                    );
                  },
                  child: _buildFacilityItem(facility),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFacilityItem(Map<String, String> facility) {
    return Container(
      width: 180,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Positioned.fill(
              child: Expanded(
                child: Image.asset(
                  facility['image'] ?? 'assets/images/test.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.3),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Text(
                  facility['title'] ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventPromoSection() {
    return Container(
      padding: const EdgeInsets.only(top: 24.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Event & Promo',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 2),
          ListView.builder(
            itemCount: eventPromoData.length,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final eventPromo = eventPromoData[index];
              return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ServiceDetailPage(
                        type: eventPromo['type'] ?? '',
                        title: eventPromo['title'] ?? '',
                        content: eventPromo['content'] ?? '',
                        date: eventPromo['date'] ?? '',
                        image: eventPromo['image'] ?? '',
                        meta: eventPromo['meta'] ?? '',
                      ),
                    ),
                  );
                },
                child: _buildEventPromoItem(eventPromo),
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildEventPromoItem(Map<String, String> event) {
    return Container(
      width: double.infinity,
      height: 280,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                event['image'] ?? 'assets/images/test.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    toBeginningOfSentenceCase(event['type'] ?? '') ?? '',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    event['title'] ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    event['date'] ?? '',
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
}

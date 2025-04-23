import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Tentang Kami'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: [
          // Top image section
          Container(
            height: 200,
            color: Colors.grey.shade300,
            child: const Center(
              child: Icon(Icons.image, size: 64, color: Colors.grey),
            ),
          ),

          // Intro section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text(
                  'Sekilas Tentang SMKDEV',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'SMKDEV adalah komunitas developer siswa SMK jurusan Rekayasa Perangkat Lunak (RPL), Teknik Komputer dan Jaringan (TKJ), dan Multimedia (MM) dari seluruh Indonesia. Mereka adalah talenta yang bersemangat dan luar biasa berbakat serta kompetitif. Mereka bergabung untuk meningkatkan skill coding, menunjukkan keahlian mereka dan siap menyesuaikan kebutuhan aplikasi untuk bisnis Anda.',
                  style: TextStyle(height: 1.6),
                ),
                SizedBox(height: 12),
                Text(
                  'Didukung komunitas developer siswa SMK dari seluruh Indonesia, Kami siap untuk mewujudkan kebutuhan digital di perusahaan Anda.',
                  style: TextStyle(height: 1.6),
                ),
              ],
            ),
          ),

          const Divider(thickness: 1),

          // Meet Us section
          const _InfoSection(
            imageAsset: 'assets/icons/temui.png',
            title: 'Temui Kami',
            children: [
              Text(
                'Rumah Sakit SMKDEV',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('Jl. Margokerto No. 29'),
              SizedBox(height: 8),
              Text(
                'Klinik SMKDEV',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('Jl. Mars Barat I No. 9'),
            ],
          ),

          const Divider(thickness: 1),

          // Emergency section
          const _InfoSection(
            imageAsset: 'assets/icons/layanan.png',
            title: 'Layanan Darurat',
            children: [
              Text(
                'Unit Gawat Darurat Umum',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('Setiap Hari 24 Jam'),
              SizedBox(height: 8),
              Text(
                'Ambulans Siaga',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('+622 7000 0000'),
              Text('+622 7000 0000'),
              SizedBox(height: 8),
              Text(
                'Telepon',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('+62813 0000 0000'),
            ],
          ),

          const Divider(thickness: 1),

          // Operation hours section
          const _InfoSection(
            imageAsset: 'assets/icons/waktu.png',
            title: 'Waktu Operasional',
            children: [
              Text(
                'Rumah Sakit',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('Senin - Jumat: 08.00 - 20.00'),
              Text('Sabtu: 08.00 - 17.00'),
              SizedBox(height: 8),
              Text(
                'Klinik',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('Senin - Jumat: 08.00 - 22.00'),
              Text('Sabtu: 08.00 - 13.00'),
              SizedBox(height: 8),
              Text(
                'BPJS',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('Senin - Jumat: 07.00 - 14.00, 16.00 - 19.00'),
              Text('Sabtu: 07.00 - 12.00'),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoSection extends StatelessWidget {
  final String imageAsset;
  final String title;
  final List<Widget> children;

  const _InfoSection({
    required this.imageAsset,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Image.asset(
            imageAsset,
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children
                .map((e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: e,
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}

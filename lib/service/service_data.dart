const List<Map<String, String>> facilityData = [
  {
    'title': 'Kamar Operasi',
    'description': 'Ruang operasi modern dengan peralatan lengkap.',
    'date': '10 Jan 2023',
    'image': 'assets/images/test.png',
    'meta': 'Foto ruang operasi',
    'content':
        'Kamar operasi rumah sakit ini dilengkapi dengan peralatan medis canggih dan teknologi terkini untuk mendukung berbagai prosedur bedah.\n\nTim medis yang bertugas terdiri dari dokter spesialis bedah, anestesi, serta perawat yang berpengalaman untuk memastikan keselamatan pasien.\n\nKebersihan dan sterilisasi ruangan dilakukan secara ketat untuk mencegah infeksi selama operasi berlangsung.'
  },
  {
    'title': 'Ruang Tunggu Pasien',
    'description': 'Ruang tunggu nyaman dengan fasilitas WiFi dan TV.',
    'date': '5 Feb 2023',
    'image': 'assets/images/test.png',
    'meta': 'Foto ruang tunggu pasien',
    'content':
        'Ruang tunggu pasien dirancang agar nyaman dengan tempat duduk yang ergonomis serta pencahayaan yang baik.\n\nKami menyediakan akses WiFi gratis dan televisi untuk memberikan hiburan bagi pasien dan keluarga yang menunggu giliran.\n\nSelain itu, terdapat dispenser air minum serta area bermain anak-anak agar pengalaman menunggu lebih menyenangkan.'
  },
  {
    'title': 'Instalasi Gawat Darurat (IGD)',
    'description': 'Layanan darurat 24 jam dengan tenaga medis profesional.',
    'date': '15 Mar 2023',
    'image': 'assets/images/test.png',
    'meta': 'Foto ruang Instalasi Gawat Darurat',
    'content':
        'IGD rumah sakit kami siap melayani pasien selama 24 jam dengan tenaga medis yang sigap dan berpengalaman.\n\nDilengkapi dengan alat resusitasi, monitor jantung, dan fasilitas penanganan cedera berat, IGD dapat menangani berbagai kondisi darurat.\n\nAmbulans yang tersedia selalu siap untuk evakuasi pasien dalam kondisi kritis dari berbagai lokasi.'
  },
  {
    'title': 'Kamar Rawat Inap',
    'description': 'Kamar pasien dengan berbagai kelas dan fasilitas.',
    'date': '20 Apr 2023',
    'image': 'assets/images/test.png',
    'meta': 'Foto kamar rawat inap',
    'content':
        'Kamar rawat inap tersedia dalam berbagai kelas, mulai dari VIP hingga kelas standar yang tetap nyaman.\n\nSetiap kamar dilengkapi dengan fasilitas seperti tempat tidur yang nyaman, kamar mandi pribadi, serta televisi.\n\nKami juga menyediakan layanan kunjungan dokter serta perawat profesional yang siap membantu pasien selama masa perawatan.'
  },
  {
    'title': 'Laboratorium Klinik',
    'description': 'Pemeriksaan kesehatan lengkap dan akurat.',
    'date': '10 Mei 2023',
    'image': 'assets/images/test.png',
    'meta': 'Foto laboratorium klinik',
    'content':
        'Laboratorium kami menyediakan berbagai layanan pemeriksaan darah, urine, serta tes kesehatan lainnya.\n\nDengan teknologi terbaru, hasil pemeriksaan dapat diperoleh dalam waktu singkat dengan akurasi tinggi.\n\nSetiap prosedur dilakukan oleh tenaga analis medis yang profesional untuk memastikan hasil yang akurat dan terpercaya.'
  },
  {
    'title': 'Radiologi',
    'description': 'Layanan X-ray, CT scan, dan MRI dengan teknologi canggih.',
    'date': '18 Jun 2023',
    'image': 'assets/images/test.png',
    'meta': 'Foto ruang radiologi',
    'content':
        'Bagian radiologi rumah sakit kami dilengkapi dengan peralatan canggih untuk mendukung diagnosa yang akurat.\n\nLayanan yang tersedia meliputi X-ray, CT scan, MRI, dan USG yang membantu dokter dalam menentukan perawatan terbaik.\n\nSemua prosedur dilakukan dengan standar keamanan tinggi untuk memastikan keselamatan pasien.'
  },
  {
    'title': 'Apotek',
    'description': 'Menyediakan berbagai obat dengan resep dokter.',
    'date': '5 Jul 2023',
    'image': 'assets/images/test.png',
    'meta': 'Foto apotek rumah sakit',
    'content':
        'Apotek rumah sakit kami menyediakan berbagai jenis obat-obatan yang direkomendasikan oleh dokter.\n\nSemua obat yang tersedia telah melewati standar keamanan dan kualitas untuk memastikan efektivitas dalam pengobatan pasien.\n\nKami juga memiliki layanan konsultasi farmasi untuk membantu pasien memahami penggunaan obat yang tepat.'
  }
];

const List<Map<String, String>> eventPromoData = [
  {
    'title': 'Cara Membuat Sabun Herbal Sendiri',
    'description':
        'Pelajari cara membuat sabun herbal alami dengan bahan-bahan pilihan.',
    'date': '23 Sep 2020',
    'type': 'event',
    'image': 'assets/images/test.png',
    'meta': 'Foto sabun herbal',
    'content':
        'Dalam workshop ini, Anda akan belajar cara membuat sabun herbal sendiri menggunakan bahan alami yang ramah lingkungan.\n\nInstruktur akan menjelaskan berbagai jenis minyak esensial yang dapat digunakan untuk menciptakan aroma yang menyegarkan.\n\nSetiap peserta akan mendapatkan kit pembuatan sabun serta panduan lengkap untuk mencoba di rumah.'
  },
  {
    'title': 'Promo Cek Kesehatan Gratis!',
    'description': 'Dapatkan layanan cek kesehatan gratis di klinik terdekat.',
    'date': '15 Okt 2020',
    'type': 'promo',
    'image': 'assets/images/test.png',
    'meta': 'Foto pasien sedang diperiksa',
    'content':
        'Kami menyediakan layanan cek kesehatan gratis sebagai bagian dari program kesehatan masyarakat.\n\nPemeriksaan meliputi pengukuran tekanan darah, kadar gula darah, serta konsultasi singkat dengan dokter.\n\nPastikan Anda datang lebih awal karena kuota peserta terbatas setiap harinya.'
  },
  {
    'title': 'Seminar Gizi Seimbang',
    'description': 'Ikuti seminar tentang pola makan sehat dan gizi seimbang.',
    'date': '10 Nov 2020',
    'type': 'event',
    'image': 'assets/images/test.png',
    'meta': 'Foto seminar dengan ahli gizi',
    'content':
        'Seminar ini akan membahas pentingnya pola makan seimbang dalam menjaga kesehatan tubuh.\n\nPara ahli gizi akan memberikan wawasan tentang bagaimana memilih makanan yang bernutrisi dan seimbang.\n\nSelain itu, peserta juga akan mendapatkan tips praktis dalam mengatur pola makan sehari-hari.'
  },
  {
    'title': 'Workshop Yoga dan Meditasi',
    'description':
        'Pelajari teknik yoga dan meditasi untuk meningkatkan kesehatan mental.',
    'date': '20 Des 2020',
    'type': 'event',
    'image': 'assets/images/test.png',
    'meta': 'Foto peserta workshop yoga',
    'content':
        'Workshop ini mengajarkan teknik yoga dasar dan meditasi untuk mengurangi stres dan meningkatkan kesehatan mental.\n\nInstruktur yang berpengalaman akan membimbing peserta dalam berbagai gerakan yoga serta teknik pernapasan yang benar.\n\nSetiap sesi dirancang agar peserta dapat mempraktikkan latihan ini di rumah dengan mudah.'
  },
  {
    'title': 'Diskon 50% Paket Pemeriksaan Darah',
    'description': 'Nikmati diskon 50% untuk pemeriksaan darah lengkap.',
    'date': '5 Jan 2021',
    'type': 'promo',
    'image': 'assets/images/test.png',
    'meta': 'Foto sampel darah di laboratorium',
    'content':
        'Dalam rangka bulan kesehatan, kami memberikan diskon 50% untuk pemeriksaan darah lengkap.\n\nPemeriksaan ini mencakup analisis kadar gula darah, kolesterol, dan fungsi hati serta ginjal.\n\nJangan lewatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dengan harga spesial.'
  }
];

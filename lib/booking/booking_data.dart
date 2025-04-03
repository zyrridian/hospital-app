final List<Map<String, dynamic>> doctors = [
  {
    'name': 'Dr. Andi Pratama, Sp.PD',
    'specialty': 'Spesialis Penyakit Dalam',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Andi Pratama adalah seorang spesialis penyakit dalam dengan pengalaman lebih dari 15 tahun. Ia memiliki ketertarikan khusus dalam manajemen penyakit kronis seperti diabetes dan hipertensi.',
    'schedule': [
      {
        'day': 'Senin',
        'time': '08.00-14.00 WIB',
        'location': 'RS Harapan Sehat'
      },
      {
        'day': 'Rabu',
        'time': '10.00-16.00 WIB',
        'location': 'Klinik Medika Jaya'
      }
    ],
    'credential':
        'Dr. Andi menyelesaikan pendidikan kedokteran di Universitas Indonesia dan memperoleh gelar spesialis di bidang penyakit dalam dari Universitas Gadjah Mada.',
    'affiliation': 'RS Harapan Sehat, Klinik Medika Jaya, IDI, PAPDI.'
  },
  {
    'name': 'Dr. Siti Handayani, Sp.JP',
    'specialty': 'Spesialis Jantung',
    'image': 'assets/images/test.png',
    'biography':
        'Sebagai seorang spesialis jantung, Dr. Siti telah menangani ribuan pasien dengan masalah kardiovaskular.',
    'schedule': [
      {
        'day': 'Selasa',
        'time': '09.00-15.00 WIB',
        'location': 'RS Citra Medika'
      },
      {
        'day': 'Jumat',
        'time': '13.00-18.00 WIB',
        'location': 'Klinik Jantung Sehat'
      }
    ],
    'credential':
        'Dr. Siti memiliki sertifikasi dari American College of Cardiology.',
    'affiliation': 'RS Citra Medika, Klinik Jantung Sehat, PERKI.'
  },
  {
    'name': 'Dr. Budi Santoso, Sp.OG',
    'specialty': 'Spesialis Kandungan',
    'image': 'assets/images/test.png',
    'biography': 'Dr. Budi adalah seorang spesialis obstetri dan ginekologi.',
    'schedule': [
      {
        'day': 'Senin',
        'time': '08.00-14.00 WIB',
        'location': 'RS Bunda Sejahtera'
      },
      {
        'day': 'Kamis',
        'time': '09.00-17.00 WIB',
        'location': 'Klinik Ibu dan Anak'
      }
    ],
    'credential':
        'Dr. Budi memperoleh gelar spesialis kandungan dari Universitas Diponegoro.',
    'affiliation': 'RS Bunda Sejahtera, Klinik Ibu dan Anak, POGI.'
  },
  {
    'name': 'Dr. Farhan Yusuf, Sp.KK',
    'specialty': 'Spesialis Kulit dan Kelamin',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Farhan adalah seorang spesialis dermatologi yang berfokus pada perawatan kulit dan kesehatan seksual.',
    'schedule': [
      {'day': 'Senin', 'time': '10.00-16.00 WIB', 'location': 'RS Derma Sehat'},
      {
        'day': 'Jumat',
        'time': '12.00-18.00 WIB',
        'location': 'Klinik Kulit Indah'
      }
    ],
    'credential':
        'Lulusan Universitas Hasanuddin dengan spesialisasi di bidang dermatologi.',
    'affiliation': 'RS Derma Sehat, Klinik Kulit Indah, PERDOSKI.'
  },
  {
    'name': 'Dr. Rina Astuti, Sp.M',
    'specialty': 'Spesialis Mata',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Rina adalah seorang spesialis mata dengan fokus pada bedah katarak dan gangguan retina.',
    'schedule': [
      {'day': 'Selasa', 'time': '08.00-14.00 WIB', 'location': 'RS Mata Sehat'},
      {'day': 'Kamis', 'time': '13.00-18.00 WIB', 'location': 'Klinik Optima'}
    ],
    'credential': 'Lulusan Universitas Diponegoro, ahli dalam bedah mata.',
    'affiliation': 'RS Mata Sehat, Klinik Optima, PERDAMI.'
  },
  {
    'name': 'Dr. Dimas Aryo, Sp.THT',
    'specialty': 'Spesialis Telinga, Hidung, Tenggorokan',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Dimas menangani berbagai keluhan seputar telinga, hidung, dan tenggorokan.',
    'schedule': [
      {'day': 'Rabu', 'time': '09.00-15.00 WIB', 'location': 'RS THT Sehat'},
      {
        'day': 'Sabtu',
        'time': '10.00-14.00 WIB',
        'location': 'Klinik THT Prima'
      }
    ],
    'credential':
        'Dr. Dimas memiliki pengalaman lebih dari 10 tahun di bidang THT.',
    'affiliation': 'RS THT Sehat, Klinik THT Prima, PERHATI-KL.'
  },
  {
    'name': 'Dr. Fajar Nugroho, Sp.OT',
    'specialty': 'Spesialis Ortopedi',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Fajar menangani kasus patah tulang, nyeri sendi, dan operasi ortopedi lainnya.',
    'schedule': [
      {
        'day': 'Senin',
        'time': '10.00-16.00 WIB',
        'location': 'RS Tulang Sehat'
      },
      {
        'day': 'Kamis',
        'time': '08.00-14.00 WIB',
        'location': 'Klinik Ortopedi Mandiri'
      }
    ],
    'credential': 'Lulusan Universitas Padjadjaran, ahli bedah ortopedi.',
    'affiliation': 'RS Tulang Sehat, Klinik Ortopedi Mandiri, PABOI.'
  },
  {
    'name': 'Dr. Winda Susanti, Sp.KJ',
    'specialty': 'Spesialis Kedokteran Jiwa (Psikiatri)',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Winda membantu pasien dengan gangguan kecemasan, depresi, dan stres berat.',
    'schedule': [
      {'day': 'Selasa', 'time': '13.00-18.00 WIB', 'location': 'RS Jiwa Sehat'},
      {
        'day': 'Jumat',
        'time': '09.00-15.00 WIB',
        'location': 'Klinik Mental Harmony'
      }
    ],
    'credential':
        'Lulusan Universitas Gadjah Mada, spesialis kesehatan mental.',
    'affiliation': 'RS Jiwa Sehat, Klinik Mental Harmony, PDSKJI.'
  },
  {
    'name': 'Dr. Ilham Prakoso, Sp.A',
    'specialty': 'Spesialis Anak',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Ilham menangani kesehatan anak-anak dari bayi hingga remaja.',
    'schedule': [
      {'day': 'Rabu', 'time': '08.00-14.00 WIB', 'location': 'RS Anak Ceria'},
      {
        'day': 'Sabtu',
        'time': '10.00-16.00 WIB',
        'location': 'Klinik Tumbuh Kembang'
      }
    ],
    'credential':
        'Dr. Ilham mendapatkan gelar spesialis anak dari Universitas Indonesia.',
    'affiliation': 'RS Anak Ceria, Klinik Tumbuh Kembang, IDAI.'
  },
  {
    'name': 'Dr. Tiara Wulandari, Sp.GK',
    'specialty': 'Spesialis Gizi Klinik',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Tiara membantu pasien dalam pengaturan pola makan dan terapi nutrisi.',
    'schedule': [
      {'day': 'Kamis', 'time': '09.00-15.00 WIB', 'location': 'RS Gizi Prima'},
      {
        'day': 'Sabtu',
        'time': '10.00-14.00 WIB',
        'location': 'Klinik Diet Sehat'
      }
    ],
    'credential': 'Dr. Tiara memiliki sertifikasi di bidang nutrisi klinis.',
    'affiliation': 'RS Gizi Prima, Klinik Diet Sehat, PDGKI.'
  },
  {
    'name': 'Dr. Hendra Wijaya, Sp.B',
    'specialty': 'Spesialis Bedah',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Hendra adalah seorang spesialis bedah yang berpengalaman dalam operasi umum dan laparoskopi.',
    'schedule': [
      {'day': 'Senin', 'time': '08.00-14.00 WIB', 'location': 'RS Bedah Utama'},
      {
        'day': 'Rabu',
        'time': '10.00-16.00 WIB',
        'location': 'Klinik Operasi Sehat'
      }
    ],
    'credential':
        'Dr. Hendra menyelesaikan spesialisasi bedah di Universitas Indonesia.',
    'affiliation': 'RS Bedah Utama, Klinik Operasi Sehat, IKABI.'
  },
  {
    'name': 'Dr. Riska Lestari, Sp.An',
    'specialty': 'Spesialis Anestesi',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Riska memiliki pengalaman dalam manajemen nyeri dan anestesi untuk berbagai jenis operasi.',
    'schedule': [
      {
        'day': 'Selasa',
        'time': '09.00-15.00 WIB',
        'location': 'RS Pusat Anestesi'
      },
      {
        'day': 'Jumat',
        'time': '13.00-18.00 WIB',
        'location': 'Klinik Nyeri Aman'
      }
    ],
    'credential': 'Lulusan Universitas Gadjah Mada, spesialis anestesiologi.',
    'affiliation': 'RS Pusat Anestesi, Klinik Nyeri Aman, PERDATIN.'
  },
  {
    'name': 'Dr. Yoga Pratama, Sp.N',
    'specialty': 'Spesialis Saraf',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Yoga adalah spesialis neurologi yang menangani stroke, epilepsi, dan gangguan saraf lainnya.',
    'schedule': [
      {
        'day': 'Senin',
        'time': '08.00-14.00 WIB',
        'location': 'RS Saraf Sejahtera'
      },
      {
        'day': 'Kamis',
        'time': '10.00-16.00 WIB',
        'location': 'Klinik NeuroCare'
      }
    ],
    'credential':
        'Menyelesaikan spesialisasi neurologi di Universitas Airlangga.',
    'affiliation': 'RS Saraf Sejahtera, Klinik NeuroCare, PERDOSSI.'
  },
  {
    'name': 'Dr. Indira Wulandari, Sp.KFR',
    'specialty': 'Spesialis Rehabilitasi Medis',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Indira membantu pasien dengan terapi fisik pasca cedera dan rehabilitasi pasca stroke.',
    'schedule': [
      {
        'day': 'Rabu',
        'time': '09.00-15.00 WIB',
        'location': 'RS Rehabilitasi Sehat'
      },
      {
        'day': 'Sabtu',
        'time': '10.00-14.00 WIB',
        'location': 'Klinik FisioCare'
      }
    ],
    'credential': 'Spesialis rehabilitasi medis dari Universitas Diponegoro.',
    'affiliation': 'RS Rehabilitasi Sehat, Klinik FisioCare, PERDOSRI.'
  },
  {
    'name': 'Dr. Arif Susanto, Sp.P',
    'specialty': 'Spesialis Paru',
    'image': 'assets/images/test.png',
    'biography':
        'Dr. Arif menangani pasien dengan gangguan pernapasan seperti asma dan PPOK.',
    'schedule': [
      {
        'day': 'Selasa',
        'time': '10.00-16.00 WIB',
        'location': 'RS Paru Sejahtera'
      },
      {
        'day': 'Jumat',
        'time': '08.00-14.00 WIB',
        'location': 'Klinik Napas Sehat'
      }
    ],
    'credential':
        'Dr. Arif memperoleh gelar spesialis paru dari Universitas Indonesia.',
    'affiliation': 'RS Paru Sejahtera, Klinik Napas Sehat, PDPI.'
  }
];

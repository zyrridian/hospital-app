import 'package:flutter/material.dart';

class BookingPatientPage extends StatefulWidget {
  const BookingPatientPage({super.key});

  @override
  State<BookingPatientPage> createState() => _BookingPatientPageState();
}

class _BookingPatientPageState extends State<BookingPatientPage> {
  String? selectedPatient;

  final List<Map<String, String>> patients = [
    {'name': 'Irfan Trianto', 'gender': 'Laki Laki', 'status': 'Saya Sendiri'},
    {'name': 'Deddy Yoga', 'gender': 'Laki Laki', 'status': 'Anak'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Ganti Pasien',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: patients.length,
              itemBuilder: (context, index) {
                final patient = patients[index];
                final isSelected = selectedPatient == patient['name'];

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPatient = patient['name'];
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isSelected ? Colors.blue : Colors.grey.shade300,
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama : ${patient['name']}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Jenis Kelamin : ${patient['gender']}',
                                style: const TextStyle(fontSize: 14),
                              ),
                              Text(
                                'Status : ${patient['status']}',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelected ? Colors.blue : Colors.grey[300],
                          ),
                          child: isSelected
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 18,
                                )
                              : null,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {
              // Handle 'Tambah Baru' action
            },
            child: const Text(
              'Tambah Baru',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

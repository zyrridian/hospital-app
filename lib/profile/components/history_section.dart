import 'package:flutter/material.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'name': 'Dokter 1',
        'specialist': 'Umum',
        'time': '2 jam yang lalu',
        'status': '2 Hari Lagi',
        'statusColor': Colors.orange,
      },
      {
        'name': 'Dokter 2',
        'specialist': 'Umum',
        'time': '2 jam yang lalu',
        'status': 'Selesai',
        'statusColor': Colors.green,
      },
      {
        'name': 'Dokter 3',
        'specialist': 'Spesialis Anak',
        'time': '2 jam yang lalu',
        'status': 'Selesai',
        'statusColor': Colors.green,
      },
      {
        'name': 'Dokter 4',
        'specialist': 'Spesialis Penyakit Dalam',
        'time': '2 jam yang lalu',
        'status': 'Selesai',
        'statusColor': Colors.green,
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () {
              // TODO: handle tap action
            },
            borderRadius: BorderRadius.circular(12),
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['name'] as String,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(item['specialist'] as String),
                        const SizedBox(height: 4),
                        Text(
                          item['time'] as String,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: item['statusColor'] as Color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      item['status'] as String,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

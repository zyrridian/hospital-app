import 'package:flutter/material.dart';
import 'package:smkdev_hospital/profile/notification_detail_page.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: const [
        NotificationTile(
          icon: Icons.health_and_safety,
          title: 'Waktunya Kontrol Nih',
          description:
              'Ingat Jadwal kontrol rutin mingguan anda dengan dr. Sandy Sucipto hari selasa',
          time: '2 jam yang lalu',
          isNew: true,
        ),
        NotificationTile(
          icon: Icons.event,
          title: 'Event',
          description:
              'World Science Day 2020, free course & consultation, 13 oktober',
          time: '2 jam yang lalu',
          isNew: true,
        ),
        NotificationTile(
          icon: Icons.local_offer,
          title: 'Promo',
          description:
              'Ada promo booking murah nih, hari rabu, 13 Oktober ini! Jangan sampe kelewatan!',
          time: '5 Oktober',
        ),
        NotificationTile(
          icon: Icons.local_offer,
          title: 'Promo',
          description:
              'Ada promo booking murah nih, hari rabu, 13 Oktober ini! Jangan sampe kelewatan!',
          time: '5 Oktober',
        ),
      ],
    );
  }
}

class _TabButton extends StatelessWidget {
  final String title;
  final int count;
  final bool isSelected;

  const _TabButton({
    required this.title,
    required this.count,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
        border: isSelected ? Border.all(color: Colors.grey.shade300) : null,
      ),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              count.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String time;
  final bool isNew;
  final Color? background;

  const NotificationTile({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.time,
    this.isNew = false,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: background ?? Colors.white,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NotificationDetailPage(),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(icon, color: Colors.blue),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    const SizedBox(height: 4),
                    Text(description, style: const TextStyle(fontSize: 13)),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Text(
                          time,
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        const SizedBox(width: 8),
                        if (isNew)
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'New',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

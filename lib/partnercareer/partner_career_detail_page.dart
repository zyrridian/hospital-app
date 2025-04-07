import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PartnerCareerDetailPage extends StatefulWidget {
  final String type;
  final String title;
  final String content;
  final String image;
  final String meta;
  final String date;

  const PartnerCareerDetailPage({
    super.key,
    required this.type,
    required this.title,
    required this.content,
    required this.image,
    required this.meta,
    required this.date,
  });

  @override
  State<PartnerCareerDetailPage> createState() =>
      _PartnerCareerDetailPageState();
}

class _PartnerCareerDetailPageState extends State<PartnerCareerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.type,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.image,
              width: double.infinity,
              height: 240,
              // fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Center(
                    child: Text(
                      widget.meta,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    toBeginningOfSentenceCase(widget.type) ?? '',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.date,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(widget.content),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

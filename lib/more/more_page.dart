import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget _simplePopUp() {
  return PopupMenuButton<int>(
    itemBuilder: (context) => [
      const PopupMenuItem(
        value: 1,
        child: Text('First'),
      ),
      const PopupMenuItem(
        value: 2,
        child: Text('Second'),
      ),
    ],
  );
}

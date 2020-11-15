import 'package:flutter/material.dart';

// class HomeAppBar extends AppBar {
//   HomeAppBar() : super(
//       elevation: 0.25,
//       backgroundColor: Colors.white,
//       flexibleSpace: _buildHomeAppbar());
//
//   static Widget _buildHomeAppbar() {
//     return Container(
//       padding: EdgeInsets.only(left: 16.0, right: 16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset("images/logo2.png", height: 75.0, width: 100.0),
//           Container(
//             child: Row(
//               children: [
//                 Container(
//                   height: 28.0,
//                   width: 28.0,
//                   padding: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(100.0)),
//                     color: Colors.orangeAccent,
//                   ),
//                   alignment: Alignment.centerRight,
//                   child: Icon(
//                     Icons.local_bar,
//                     color: Colors.white,
//                     size: 16.0,
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                       color: Color(0x50FFD180)
//                   ),
//                   child: Text("1.281 poin", style: TextStyle(fontSize: 14.0)),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
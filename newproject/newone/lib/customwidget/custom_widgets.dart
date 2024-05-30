// // import 'package:flutter/material.dart';

// // class CustomBottomNavigationBar extends StatelessWidget {
// //   final int currentIndex;
// //   final ValueChanged<int> onTap;

// //   const CustomBottomNavigationBar({
// //     required this.currentIndex,
// //     required this.onTap,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return BottomNavigationBar(
// //       currentIndex: currentIndex,
// //       onTap: onTap,
// //       items: [
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.home),
// //           label: 'Home',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.search),
// //           label: 'Search',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.notifications),
// //           label: 'Notifications',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.account_circle),
// //           label: 'Profile',
// //         ),
// //       ],
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class CustomBottomNavigationBar extends StatefulWidget {
//   final int currentIndex;
//   final ValueChanged<int> onTap;

//   const CustomBottomNavigationBar({
//     required this.currentIndex,
//     required this.onTap,
//   });

//   @override
//   _CustomBottomNavigationBarState createState() =>
//       _CustomBottomNavigationBarState();
// }

// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   late int _currentIndex;

//   @override
//   void initState() {
//     super.initState();
//     _currentIndex = widget.currentIndex;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: _currentIndex,
//       onTap: (index) {
//         setState(() {
//           _currentIndex = index;
//         });

//         // Change color when tapped
//         // You can customize the color as per your requirement
//         // For example, change to red color
//         // For simplicity, I'm using Colors.red as an example
//         widget.onTap(index);
//       },
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.search),
//           label: 'Search',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.notifications),
//           label: 'Notifications',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.account_circle),
//           label: 'Profile',
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color selectedColor;
  final Color unselectedColor;

  const CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    required this.selectedColor,
    required this.unselectedColor,
  });

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        widget.onTap(index);
      },
      selectedItemColor: widget.selectedColor,
      unselectedItemColor: widget.unselectedColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile',
        ),
      ],
    );
  }
}

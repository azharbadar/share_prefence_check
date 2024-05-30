// import 'package:flutter/material.dart';
// import 'package:newone/customwidget/custom_widgets.dart';

// class ImageScreen extends StatefulWidget {
//   @override
//   _ImageScreenState createState() => _ImageScreenState();
// }

// class _ImageScreenState extends State<ImageScreen> {
//   int _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Screen'),
//       ),
//       body: Column(children: [

//       ],),
//         bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

// new one

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newone/customwidget/custom_widgets.dart';
import 'package:newone/profilepage/profile_page.dart';
import 'package:newone/searchpage/search_page.dart';

class HomePage extends StatelessWidget {
  final RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Bottom Navigation Bar Example'),
      ),
      body: Center(
        child: Text('Home Page Content'),
      ),
      // bottomNavigationBar: Obx(() => CustomBottomNavigationBar(
      //   currentIndex: currentIndex.value,
      //   onTap: (index) => currentIndex.value = index,
      //   selectedColor: Colors.blue, // Change to the desired color
      //   unselectedColor: Colors.grey,
      // )),
      bottomNavigationBar: Obx(() => CustomBottomNavigationBar(
            currentIndex: currentIndex.value,
            onTap: (index) {
              currentIndex.value = index;
              if (index == 3) {
                // Navigate to profile page when profile icon is tapped
                Get.to(ProfilePage());
              }
              if (index == 4) {
                // Navigate to profile page when profile icon is tapped
                Get.to(SearchPage());
              }
            },
            selectedColor: Colors.blue, // Change to the desired color
            unselectedColor: Colors.grey,
          )),
    );
  }
}

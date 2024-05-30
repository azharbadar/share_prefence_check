import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../customwidget/custom_widgets.dart';

class ProfilePage extends StatelessWidget {
     final RxInt currentIndex = 0.obs;
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text("search page mammm oamaomllm ")
      ],),
      

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
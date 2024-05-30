import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newone/customwidget/custom_widgets.dart';
import 'package:newone/profilepage/profile_page.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final RxInt currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text("search page mammm oamaomllm "),
        
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
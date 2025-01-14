import 'package:Recify/utils/common/search_box.dart';
import 'package:Recify/utils/titles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



import '../../utils/common/BannerImage.dart';
import '../../utils/common/headingsection.dart';
import '../../utils/common/verticalimagescroll.dart';
import '../../utils/page_image.dart';
import '../category_page/Italian.dart';
import 'home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 245, 245, 244), // Background color
        width: double.infinity,
        padding: const EdgeInsets.only(left: 15, top: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                PageTitles.homeTitle,
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const RSearchbox(),
              const SizedBox(height: 25),
              HeadingSection(
                title: 'Popular Categories',
                showActionButton: false,
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 95,
                child: Obx(() {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: homePageController.categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final category = homePageController.categories[index];
                      return Verticalimagescrool(
                        icon: category['icon'] as IconData,
                        title: category['title'] as String,
                        isSelected: homePageController.selectedIndex.value == index,
                        onTap: () {
                          homePageController.updateSelectedIndex(index);
                          var page = category['page'];
                          if (page != null) {
                            homePageController.navigateToPage(page as Widget);
                          } else {
                            print('Page is null for ${category['title']}');
                          }
                        },
                        targetPage: Italian(),
                      );
                    },
                  );
                }),
              ),
              const SizedBox(height: 35),
              const Text(
                'Trending Recipes',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 27),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: CarouselSlider(
                      items: [
                        Bannersection(imageUrl: PageImages.bannerImage1),
                        Bannersection(imageUrl: PageImages.bannerImage2),
                        Bannersection(imageUrl: PageImages.bannerImage4),
                      ],
                      options: CarouselOptions(
                        viewportFraction: 0.6,
                        enlargeCenterPage: true,
                        height: 250,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

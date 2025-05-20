import 'package:flutter/material.dart';
import 'package:sawera_project/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController controller = PageController();

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        title: 'Trending news',
        image:
            'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg'),
    OnBoardingModel(
        title: 'React,Save & Share News',
        image:
            'https://image-processor-storage.s3.us-west-2.amazonaws.com/images/3cf61c1011912a2173ea4dfa260f1108/halo-of-neon-ring-illuminated-in-the-stunning-landscape-of-yosemite.jpg'),
    OnBoardingModel(
        title: 'Video & live News From Youtube',
        image:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/new-year-background-736885_1280.jpg'),
    OnBoardingModel(
        title: 'Browse News From Variety Of Categories',
        image:
            'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: onBoardingList.length,
                // scrollDirection: Axis.vertical,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Image.network(onBoardingList[i].image.toString()),
                      Text(onBoardingList[i].title.toString())
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

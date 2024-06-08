import 'package:dalel1/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath, title, subTitle;

  OnBoardingModel(
      {required this.imagePath, required this.title, required this.subTitle});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: Assets.imagesOnBoarding1,
    title: "Explore The history with Dalel in a smart way",
    subTitle:
        "Using our app’s history libraries you can find many historical periods ",
  ),
  OnBoardingModel(
    imagePath: Assets.imagesOnBoarding2,
    title: "From every place on earth",
    subTitle: "A big variety of ancient places from all over the world",
  ),
  OnBoardingModel(
    imagePath: Assets.imagesOnBoarding3,
    title: "A big variety of ancient places from all over the world",
    subTitle: "Using modern AI technology for better user experience",
  ),
];

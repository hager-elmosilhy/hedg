class OnboardingContent {
  String image;
  String title;
  String discription;

  OnboardingContent({required this.image, required this.title, required this.discription});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      title: 'Shape Your Financial Future ',
      image: 'assets/images/onboarding1.png',
      discription: "invest your money By Starting With \nOnly Egp500 And Build Your Wealth"
  ),
  OnboardingContent(
      title: 'Track Your Investments',
      image: 'assets/images/onboarding2.png',
      discription: "see your return on investments in the \nselected management assets"
  ),
  OnboardingContent(
      title: 'Calculate Before Investing',
      image: 'assets/images/onboarding3.png',
      discription: "calculate your potential growth to \nchoose the perfect option for you "
  ),
];
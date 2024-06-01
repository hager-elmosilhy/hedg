import 'package:flutter/material.dart';
import 'package:hedg/core/utils/colors.dart';
import 'package:hedg/feature/onboarding/model/content_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;});},
        itemBuilder: (_, i) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            /*const Text('Skip',textAlign: TextAlign.end,style: TextStyle(
              color: AppColors.textColor,fontSize: 30,fontWeight: FontWeight.bold
             ),),*/
              Image.asset(contents[i].image,scale: 3.1,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    contents[i].title,
                    style: const TextStyle(
                      color: AppColors.textColor,
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    contents[i].discription,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'JosefinSans-Regular',
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                 /* SizedBox(
                    height: 50,
                    width: 310,
                    child: MaterialButton(
                      onPressed: () {
                        if (currentIndex == contents.length - 1) {
                           GoRouter.of(context).push('/login');
                        }
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn,
                        );
                      },
                      color: const Color(0xff2D3380),
                      textColor:  Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          currentIndex == contents.length - 1 ? "Continue" : "Next",
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'JosefinSans-Bold',
                            color: Colors.white,
                          ),),
                    ),
                  ),*/
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                          (index) => buildDot(index, context),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 10 : 10,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentIndex == index
            ?AppColors.textColor
        : const Color(0xffd9d9d9),
      ),
    );

  }
}
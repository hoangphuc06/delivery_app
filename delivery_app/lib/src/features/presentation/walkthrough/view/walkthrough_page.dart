import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/walkthrough/view/custom_view/on_boarding_content.dart';
import 'package:delivery_app/src/size/size_config.dart';
import 'package:flutter/material.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({Key? key}) : super(key: key);

  @override
  _WalkthroughPageState createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  int currentPage = 0;

  PageController _pageController = PageController(initialPage: 0);

  List<Map<String, String>> onboardingData = [
    {
      "title": "Find Food You Love",
      "description": "Discover the best foods from over 1000 restaurants and fast delivery to your doorstep",
      "image": "assets/images/walkthrough1.svg",
    },
    {
      "title": "Live Tracking",
      "description": "Real time tracking of your food on the app once you placed the order",
      "image": "assets/images/walkthrough2.svg",
    },
    {
      "title": "Fast Delivery",
      "description": "Fast food delivery to your home, offlice whenever you are",
      "image": "assets/images/walkthrough3.svg",
    },
  ];

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.teal : Color(0xFFD8D8D8),
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: onboardingData.length,
                  itemBuilder: (context,index) => OnboardingContent(
                    title: onboardingData[index]['title'],
                    description: onboardingData[index]['description'],
                    image: onboardingData[index]['image'],
                  )
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  currentPage == onboardingData.length - 1
                      ? createButton(
                    labelButton: "Get Started",
                    buttonColor: green,
                    func: () {
                      Navigator.pushNamed(context, "welcome");
                    }
                  )
                      : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OnBoardNavBtn(
                        name: 'Skip',
                        onPressed: () {
                          Navigator.pushNamed(context, "welcome");
                        },
                      ),
                      Row(
                        children: List.generate(onboardingData.length, (index) => dotIndicator(index)),
                      ),
                      OnBoardNavBtn(
                        name: 'Next',
                        onPressed: () {
                          _pageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);

  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          name,
          style: TextStyle(
              fontSize: SizeConfig.blockSizeH! * 4.5
          ),
        ),
      ),
    );
  }
}

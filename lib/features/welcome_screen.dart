import 'package:flutter/material.dart';
import 'package:revex/common/widgets/company_logo.dart';
import 'package:revex/common/widgets/corousel.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  List<String> items = [
    "Helping elevate the literacy rate of Filipinos and making education more accessible.",
    "Second Quote Second Quote Second Quote Second Quote Second Quote Second Quote.",
    "Third Quote Third Quote Third Quote Third Quote Third Quote Third Quote Third Quote Third Quote.",
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/welcome_screen.jpg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: constraints.maxHeight * .30,
                child: const Align(
                  alignment: Alignment.bottomCenter,
                  child: Companylogo(),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: constraints.maxHeight * .40,
                child: Center(
                  child: TextCarousel(
                      items: items,
                      pageController: _pageController,
                      currentPage: _currentPage),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: constraints.maxHeight * .30,
                child: Center(
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () => _onContinue(context),
                      child: const Text("Continue"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  void _onContinue(BuildContext context) {
    Navigator.pushNamed(context, '/signin');
  }
}

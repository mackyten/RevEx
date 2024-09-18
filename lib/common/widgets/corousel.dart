import 'package:flutter/material.dart';

///Can be changed to any type of widget carousel later on
class TextCarousel extends StatelessWidget {
  final List<String> items;
  final PageController pageController;
  final int currentPage;
  const TextCarousel({
    super.key,
    required this.items,
    required this.pageController,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            child: PageView(
              controller: pageController,
              children: List.generate(items.length, (index) {
                final item = items[index];
                return Text(
                  item,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              items.length,
              (index) => Container(
                width: 10,
                height: 10,
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: currentPage == index ? Colors.white : Colors.white38,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

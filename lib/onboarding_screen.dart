import 'package:flutter/material.dart';

import '../../../models/feature_info.dart';
import '../../../widgets/feature.dart';

class OnboardingScreen extends StatefulWidget {
  /// Introduces the app features
  const OnboardingScreen({super.key});

  static const path = '/onboard';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) => setState(() => currentPage = value),
                  itemCount: features.length,
                  itemBuilder: (BuildContext context, int index) => Feature(
                    title: features[index].text,
                    description: features[index].description,
                    image: features[index].image,
                    currentPage: currentPage,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

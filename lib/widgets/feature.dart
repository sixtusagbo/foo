import 'package:flutter/material.dart';
import 'package:foo/helpers.dart' show StringCasingExtension, myDefaultSize;
import 'package:foo/models/feature_info.dart';
import 'package:foo/widgets/dot.dart';

class Feature extends StatelessWidget {
  /// The `Feature` widget displays a feature
  /// of the app on the
  /// onboarding screen

  const Feature({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.currentPage,
  });

  final String title, description, image;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Image.asset(
          image,
          height: size.height * 0.5,
          width: size.width,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: size.height * 0.43,
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      features.length,
                      (_) => Dot(currentPage: currentPage, index: _),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    title.toTitleCase(),
                    style: themeData.textTheme.displayLarge!.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Text(
                    description.toTitleCase(),
                    style: themeData.textTheme.displaySmall!.copyWith(
                      fontSize: 21,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: themeData.primaryColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: themeData.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

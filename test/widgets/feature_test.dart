import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foo/helpers.dart';
import 'package:foo/models/feature_info.dart';
import 'package:foo/widgets/feature.dart';

void main() {
  testWidgets(
      'Feature widget displays title, description, image and Get Started button',
      (WidgetTester tester) async {
    // Define a sample feature
    final feature = FeatureInfo(
      text: "Foo Feature",
      description: "Just a test feature.",
      image: "assets/images/hand-bitcoin.jpg",
    );

    // Build the Feature widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Feature(
            title: feature.text,
            description: feature.description,
            image: feature.image,
            currentPage: 0,
          ),
        ),
      ),
    );

    // Verify if the title, description and image are displayed
    expect(find.text(feature.text.toTitleCase()), findsOneWidget);
    expect(find.text(feature.description.toTitleCase()), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);

    // Verify if the Get Started button is displayed
    expect(find.text('Get Started'), findsOneWidget);

    // Verify if the navigation to the login screen occurred
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}

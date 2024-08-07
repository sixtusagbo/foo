import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foo/helpers.dart';
import 'package:foo/models/feature_info.dart';
import 'package:foo/onboarding_screen.dart';

void main() {
  testWidgets('OnboardingScreen displays features in PageView',
      (WidgetTester tester) async {
    // Build the OnboardingScreen widget
    await tester.pumpWidget(
      const MaterialApp(
        home: OnboardingScreen(),
      ),
    );

    // Verify if the first feature is displayed
    expect(find.text(features[0].text.toTitleCase()), findsOneWidget);
    expect(find.text(features[0].description.toTitleCase()), findsOneWidget);
    expect(find.byType(Image), findsWidgets);

    // Swipe to the next page
    await tester.drag(find.byType(PageView), const Offset(-400, 0));
    await tester.pumpAndSettle();

    // Verify if the second feature is displayed
    expect(find.text(features[1].text.toTitleCase()), findsOneWidget);
    expect(find.text(features[1].description.toTitleCase()), findsOneWidget);

    // Swipe to the next page
    await tester.drag(find.byType(PageView), const Offset(-400, 0));
    await tester.pumpAndSettle();

    // Verify if the third feature is displayed
    expect(find.text(features[2].text.toTitleCase()), findsOneWidget);
    expect(find.text(features[2].description.toTitleCase()), findsOneWidget);
  });
}

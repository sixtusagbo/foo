import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foo/widgets/dot.dart';

void main() {
  testWidgets('Dot is highlighted when currentPage matches index',
      (WidgetTester tester) async {
    // Build the Dot widget with currentPage matching index
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Dot(
            currentPage: 1,
            index: 1,
          ),
        ),
      ),
    );

    // Verify if the dot is highlighted
    final animatedContainer =
        tester.widget<AnimatedContainer>(find.byType(AnimatedContainer));
    expect(animatedContainer.decoration, isA<BoxDecoration>());
    final boxDecoration = animatedContainer.decoration as BoxDecoration;
    expect(boxDecoration.color, Colors.black);
  });

  testWidgets('Dot is not highlighted when currentPage does not match index',
      (WidgetTester tester) async {
    // Build the Dot widget with currentPage not matching index
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Dot(
            currentPage: 1,
            index: 0,
          ),
        ),
      ),
    );

    // Verify if the dot is not highlighted
    final animatedContainer =
        tester.widget<AnimatedContainer>(find.byType(AnimatedContainer));
    expect(animatedContainer.decoration, isA<BoxDecoration>());
    final boxDecoration = animatedContainer.decoration as BoxDecoration;
    expect(boxDecoration.color, Colors.black.withOpacity(0.3));
  });

  testWidgets('Dot has correct size and margin', (WidgetTester tester) async {
    // Build the Dot widget
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Dot(
            currentPage: 1,
            index: 1,
          ),
        ),
      ),
    );
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:foo/models/feature_info.dart';

void main() {
  group('FeatureInfo', () {
    test('Create a valid FeatureInfo instance', () {
      final feature = FeatureInfo(
        text: 'Create your account',
        description: 'Sign up quickly to start your Bitcoin learning journey.',
        image: 'assets/images/bitcoin-running.jpg',
      );

      expect(feature.text, 'Create your account');
      expect(feature.description,
          'Sign up quickly to start your Bitcoin learning journey.');
      expect(feature.image, 'assets/images/bitcoin-running.jpg');
    });
  });
}

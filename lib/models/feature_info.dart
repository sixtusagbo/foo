class FeatureInfo {
  /// Holds information about the features
  FeatureInfo({
    required this.text,
    required this.description,
    required this.image,
  });

  final String text, description, image;
}

List<FeatureInfo> features = [
  FeatureInfo(
    text: "Create your account",
    description: "Sign up quickly to start your Bitcoin learning journey.",
    image: "assets/images/bitcoin-running.jpg",
  ),
  FeatureInfo(
    text: "Learn the basics",
    description:
        "Understand the fundamentals of Bitcoin and blockchain technology.",
    image: "assets/images/dalle-bitcoin.webp",
  ),
  FeatureInfo(
    text: "Advanced topics",
    description:
        "Dive deeper into advanced topics like mining, trading, and security.",
    image: "assets/images/hand-bitcoin.jpg",
  ),
];

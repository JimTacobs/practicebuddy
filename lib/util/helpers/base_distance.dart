abstract class StringDistance {
  int distance(String s1, String s2);
}

abstract class NormalizedStringDistance {
  /// Returns a similarity between 0.0 (exact same) and 1.0 (completely different).
  double normalizedDistance(String s1, String s2);
}

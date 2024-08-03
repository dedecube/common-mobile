/// Extension on [int] that provides a method to calculate the inverted index.
extension InvertedIndexOnIntExtension on int {
  /// Calculates the inverted index of the given [n] based on the current integer value.
  ///
  /// The inverted index is calculated as `n - this - 1`.
  ///
  /// Example:
  /// ```dart
  /// final listLength = 10;
  /// final index = 5.invertedIndex(listLength);
  /// print(index); // Output: 4
  /// ```
  int invertedIndex(int n) => n - this - 1;
}

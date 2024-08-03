extension RangeOnNumExtension on num {
  /// Maps the current value from one range to another range.
  ///
  /// The [to] parameter specifies the target range, defined by its minimum and maximum values.
  /// The optional [from] parameter specifies the source range, which defaults to (0, 1).
  ///
  /// Returns the mapped value within the target range.
  ///
  /// Example usage:
  /// ```dart
  /// double result = 0.5.mapToRangeFrom((0, 100), (0, 1));
  /// print(result); // Output: 50.0
  /// ```
  double mapToRangeFrom(
    (double toMin, double toMax) to, [
    (double fromMin, double fromMax) from = (0, 1),
  ]) =>
      to.$1 +
      ((this - from.$1) / (from.$2 - from.$1)).clamp(0.0, 1.0) *
          (to.$2 - to.$1);

  /// Maps the current value from one range to another range.
  ///
  /// The [from] parameter specifies the source range, defined by its minimum and maximum values.
  /// The optional [to] parameter specifies the target range, which defaults to (0, 1).
  ///
  /// Returns the mapped value within the target range.
  ///
  /// Example usage:
  /// ```dart
  /// double result = 50.0.mapFromRangeTo((0, 100), (0, 1));
  /// print(result); // Output: 0.5
  /// ```
  double mapFromRangeTo(
    (double fromMin, double fromMax) from, [
    (double toMin, double toMax) to = (0, 1),
  ]) =>
      to.$1 +
      ((this - from.$1) / (from.$2 - from.$1)).clamp(0.0, 1.0) *
          (to.$2 - to.$1);

  /// Maps the current value from a source range to a target range.
  ///
  /// The [toMin] and [toMax] parameters specify the target range.
  /// The optional [fromMin] and [fromMax] parameters specify the source range, which default to 0.0 and 1.0 respectively.
  ///
  /// Returns the mapped value within the target range.
  ///
  /// Example usage:
  /// ```dart
  /// double result = 0.5.mapToRange(0, 100, fromMin: 0, fromMax: 1);
  /// print(result); // Output: 50.0
  /// ```
  double mapToRange(
    num toMin,
    num toMax, {
    num fromMin = 0.0,
    num fromMax = 1.0,
  }) =>
      toMin.toDouble() +
      ((this - fromMin) / (fromMax - fromMin)).clamp(0.0, 1.0) *
          (toMax - toMin).toDouble();

  /// Maps the current value from a source range to a target range.
  ///
  /// The [fromMin] and [fromMax] parameters specify the source range.
  /// The optional [toMin] and [toMax] parameters specify the target range, which default to 0.0 and 1.0 respectively.
  ///
  /// Returns the mapped value within the target range.
  ///
  /// Example usage:
  /// ```dart
  /// double result = 50.0.mapFromRange(0, 100, toMin: 0, toMax: 1);
  /// print(result); // Output: 0.5
  /// ```
  double mapFromRange(
    num fromMin,
    num fromMax, {
    num toMin = 0.0,
    num toMax = 1.0,
  }) =>
      mapToRange(toMin, toMax, fromMax: fromMax, fromMin: fromMin);

  /// Maps the current value from a source range to a target range without clamping the result.
  ///
  /// The [toMin] and [toMax] parameters specify the target range.
  /// The optional [fromMin] and [fromMax] parameters specify the source range, which default to 0.0 and 1.0 respectively.
  ///
  /// Returns the mapped value within the target range, which can be outside the specified range.
  ///
  /// Example usage:
  /// ```dart
  /// double result = 0.5.mapToRangeLoose(0, 100, fromMin: 0, fromMax: 1);
  /// print(result); // Output: 50.0
  /// ```
  double mapToRangeLoose(
    double toMin,
    double toMax, {
    num fromMin = 0.0,
    num fromMax = 1.0,
  }) =>
      toMin + ((this - fromMin) / (fromMax - fromMin)) * (toMax - toMin);
}

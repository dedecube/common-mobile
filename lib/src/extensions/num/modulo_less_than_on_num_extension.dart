/// Extension on [int] to perform modulo operation with a given divisor.
extension ModuloLessThanOnNumExtension on num {
  /// Returns the modulo of the integer with the given divisor.
  ///
  /// The returned value will always be less than the divisor.
  ///
  /// Example:
  /// ```dart
  /// int result = 10.modLessThan(3);
  /// print(result); // Output: 1
  /// ```
  num moduloLessThan(num divisor) {
    num value = this;

    while (value >= divisor) {
      value -= divisor;
    }

    return value;
  }
}

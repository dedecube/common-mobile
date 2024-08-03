/// Extension on [int] to provide convenient methods for creating [Duration] objects.
///
/// This extension allows you to easily create [Duration] objects by calling
/// methods on integer values. It provides methods for creating durations in
/// microseconds, milliseconds, seconds, minutes, hours, days, weeks, months,
/// and years.
///
/// Example usage:
/// ```dart
/// Duration duration = 500.milliseconds;
/// print(duration); // Output: 0:00:00.500000
///
/// Duration duration = 2.hours;
/// print(duration); // Output: 2:00:00
/// ```
extension DurationOnIntExtension on int {
  /// Creates a [Duration] object representing the number of microseconds.
  Duration get microseconds => Duration(microseconds: this);

  /// Creates a [Duration] object representing the number of milliseconds.
  Duration get milliseconds => Duration(milliseconds: this);

  /// Creates a [Duration] object representing the number of seconds.
  Duration get seconds => Duration(seconds: this);

  /// Creates a [Duration] object representing the number of minutes.
  Duration get minutes => Duration(minutes: this);

  /// Creates a [Duration] object representing the number of hours.
  Duration get hours => Duration(hours: this);

  /// Creates a [Duration] object representing the number of days.
  Duration get days => Duration(days: this);

  /// Creates a [Duration] object representing the number of weeks.
  Duration get weeks => Duration(days: this * 7);

  /// Creates a [Duration] object representing the number of months.
  Duration get months => Duration(days: this * 30);

  /// Creates a [Duration] object representing the number of years.
  Duration get years => Duration(days: this * 365);
}

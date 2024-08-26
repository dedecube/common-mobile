import 'package:common_mobile/src/utils/partition/partition.dart';

/// An extension on [Iterable] that provides a method to partition the elements into lists of a specified size.
///
/// The extension adds the method `partition` to [Iterable] which takes an integer [size] as a parameter and returns an iterable of lists.
/// Each list contains [size] number of elements from the original iterable.
/// If the original iterable is empty, an empty list is returned.
///
/// Example usage:
/// ```dart
/// final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
/// final partitioned = numbers.partition(3);
/// print(partitioned); // [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]
/// ```
extension PartitionOnIterableExtension<T> on Iterable<T> {
  /// Partitions the elements of the iterable into lists of a specified size.
  Iterable<List<T>> partition(int size) =>
      isEmpty ? <List<T>>[] : Partition<T>(this, size);
}

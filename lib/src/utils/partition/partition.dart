import 'package:common_mobile/src/utils/partition/partition_iterator.dart';

class Partition<T> extends Iterable<List<T>> {
  Partition(this._iterable, this._size) {
    if (_size <= 0) {
      throw ArgumentError(_size);
    }
  }

  final Iterable<T> _iterable;
  final int _size;

  @override
  Iterator<List<T>> get iterator => PartitionIterator<T>(
        _iterable.iterator,
        _size,
      );
}

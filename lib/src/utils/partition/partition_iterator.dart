class PartitionIterator<T> implements Iterator<List<T>> {
  PartitionIterator(this._iterator, this._size);

  final Iterator<T> _iterator;

  final int _size;

  List<T>? _current;

  @override
  List<T> get current => _current ?? [];

  @override
  bool moveNext() {
    var newValue = <T>[];
    var count = 0;

    while (count < _size && _iterator.moveNext()) {
      newValue.add(_iterator.current);
      count++;
    }
    _current = (count > 0) ? newValue : null;

    return _current != null;
  }
}

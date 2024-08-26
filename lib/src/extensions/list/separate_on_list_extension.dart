extension SeparateOnListExtension<T> on List<T> {
  List<T> separateWith(
    T splitter, {
    bool alsoFirst = false,
    bool alsoLast = false,
    bool alsoFirstAndLast = false,
  }) =>
      <T>[
        if (alsoFirst || alsoFirstAndLast) splitter,
        if (isNotEmpty) first,
        for (int i = 1; i < length; ++i) ...<T>[
          splitter,
          this[i],
        ],
        if (alsoLast || alsoFirstAndLast) splitter,
      ];

  List<T> separateWithMultiple(
    Iterable<T> splitters, {
    bool alsoFirst = false,
    bool alsoLast = false,
    bool alsoFirstAndLast = false,
  }) =>
      <T>[
        if (alsoFirst || alsoFirstAndLast) ...splitters,
        if (isNotEmpty) first,
        for (int i = 1; i < length; ++i) ...<T>[
          ...splitters,
          this[i],
        ],
        if (alsoLast || alsoFirstAndLast) ...splitters,
      ];
}

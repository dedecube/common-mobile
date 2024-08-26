# Common Mobile

`common_mobile` is a Dart package that provides a set of utilities, extensions, and components to streamline the development of mobile applications using Flutter. This package includes commonly used extensions on various Dart and Flutter classes, along with utility functions and widgets that simplify your code and enhance productivity.

## Features

- **Layout Components**: Widgets for layout management, padding, and safe areas.
- **Extensions**: Useful extensions for `BuildContext`, `Iterable`, `List`, `int`, `num`, `String`, and `Widget`.
- **Hooks**: A hook for managing loading overlays in Flutter applications.
- **Utilities**: Helper functions for color conversion and partitioning iterables.

## Installation

Add the following line to your `pubspec.yaml`:

```yaml
 common_mobile:
    git:
      url: https://github.com/dedecube/common-mobile
      ref: main
```

You can set as `ref` the desired version, using a tag or a commit hash.

Then, run `flutter pub get` in your terminal.

## Usage

### Layout Components

- **`DedeAlign`**: Align widgets within a parent widget.
- **`DedePadding`**: Add padding to widgets.
- **`DedeSafeSpace`**: Manage safe areas with easy-to-use widgets.

### Extensions

#### `BuildContext` Extensions

- **`unfocus`**: Unfocuses the current focus node.
- **`shortcutsOnBuildContext`**: Quick access to `ThemeData`, `MediaQuery`, `Scaffold`, and safe area insets.

```dart
// Usage
context.unfocus();
ThemeData theme = context.themeData;
```

#### `Iterable` Extensions

- **`partition`**: Partitions an iterable into chunks of a specified size.

```dart
final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
final partitioned = numbers.partition(3);
print(partitioned); // [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]
```

#### `List` Extensions

- **`separate`**: Inserts a separator between elements of a list.

#### `int` Extensions

- **`duration`**: Converts an `int` to a `Duration` object.
- **`invertedIndex`**: Calculates the inverted index.
- **`moduloLessThan`**: Performs modulo operation with a divisor.

#### `num` Extensions

- **`mapToRangeFrom`**: Maps a number from one range to another.

#### `String` Extensions

- **`toColor`**: Converts a hex string to a `Color`.

```dart
Color color = '#FF5733'.toColor();
```

#### `Widget` Extensions

- **`withPadding`**: Adds padding to a widget.
- **`withSafeArea`**: Wraps a widget in a `SafeArea`.
- **`withCircularBorderRadius`**: Adds a circular border radius to a widget.

### Hooks

#### `useLoadingOverlay`

- **`useLoadingOverlay`**: A hook to manage and display loading overlays in your Flutter application.

```dart
final overlay = useLoadingOverlay();
overlay.show();
overlay.hide();
```

### Utilities

#### `hexToColor`

- **`hexToColor`**: Converts a hex string to a `Color`.

```dart
Color color = hexToColor('#FF5733');
```

#### `Partition`

- **`Partition`**: A utility class to partition an iterable into lists of a specified size.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request on GitHub if you have suggestions or improvements.

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

---

This `README.md` provides a structured and detailed overview of your Dart package, covering installation, usage, and key features. You can customize it further based on your specific needs or additional features in your package.
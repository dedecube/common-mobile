# Dedecube - Common mobile

`common_mobile` is a Dart package designed to provide a collection of utility extensions, widgets, and functions to enhance and simplify Flutter development.

## Features

This package includes the following features:

### 1. Layout Components

- **DedeAlign**: A set of widgets to control alignment within a parent widget.
- **DedePadding**: A set of widgets to apply padding to other widgets.
- **DedeSafeSpace**: A set of widgets to manage safe spaces (e.g., status bar, navigation bar) in your layout.
- **DedeSafe**: A wrapper to easily manage the safe areas of your layout.
- **DedeSpace**: A utility to add space between widgets.

### 2. Extensions

#### **BuildContext Extensions**
- **ShortcutsOnBuildContextExtension**: Provides shortcuts for accessing common `BuildContext` properties.
  - `themeData`: Shortcut for `Theme.of(context)`.
  - `mediaQuery`: Shortcut for `MediaQuery.of(context)`.
  - `safe`: Shortcut for accessing safe area insets.
  - `scaffold`: Shortcut for accessing the `ScaffoldState` from the context.
  
- **UnfocusOnBuildContextExtension**: Provides a method to unfocus the current focus node.
  - `unfocus()`: Unfocus the current focus node.

#### **Iterable Extensions**
- **PartitionOnIterableExtension**: Partitions elements of an `Iterable` into smaller lists of a specified size.
  - `partition(int size)`: Partitions elements into lists of the specified size.

#### **List Extensions**
- **SeparateOnListExtension**: Inserts a separator between each element in a list.
  - `separate(T separator)`: Returns a new list with separators between elements.

#### **Num Extensions**
- **DurationOnIntExtension**: Easily create `Duration` objects from integers.
  - `microseconds`, `milliseconds`, `seconds`, `minutes`, `hours`, `days`, `weeks`, `months`, `years`: Methods to create `Duration` objects.

- **InvertedIndexOnIntExtension**: Calculates the inverted index of an integer.
  - `invertedIndex(int n)`: Returns the inverted index.

- **ModuloLessThanOnNumExtension**: Performs a modulo operation ensuring the result is always less than the divisor.
  - `moduloLessThan(num divisor)`: Returns the modulo of the number with the given divisor.

- **RangeOnNumExtension**: Maps a number from one range to another.
  - `mapToRangeFrom((double toMin, double toMax), [(double fromMin, double fromMax)])`: Maps a value from one range to another.

#### **String Extensions**
- **ToColorOnStringExtension**: Converts a hex string to a `Color` object.
  - `toColor({String alphaChannel = 'FF'})`: Converts a hex string to a `Color`.

#### **Widget Extensions**
- **AlignOnWidgetExtension**: Provides methods to align widgets within their parent.
  - `alignBottomCenter()`, `alignBottomLeft()`, `alignBottomRight()`, `alignCenter()`, `alignCenterLeft()`, `alignCenterRight()`, `alignTopCenter()`, `alignTopLeft()`, `alignTopRight()`: Aligns the widget within its parent.

- **PaddingOnWidgetExtension**: Provides methods to apply padding to widgets.
  - `withPadding(...)`, `withAllPadding(...)`, `withTopPadding(...)`, `withBottomPadding(...)`, `withLeftPadding(...)`, `withRightPadding(...)`, `withHorizontalPadding(...)`, `withVerticalPadding(...)`: Adds padding to the widget.

- **SafeAreaOnWidgetExtension**: Wraps the widget with `SafeArea` to respect safe area insets.
  - `withSafeArea(...)`, `withSafeAreaNone()`, `withSafeAreaTop()`, `withSafeAreaBottom()`, `withSafeAreaLeft()`, `withSafeAreaRight()`, `withSafeAreaVertical()`, `withSafeAreaHorizontal()`, `withSafeAreaAll()`: Wraps the widget with `SafeArea`.

- **BorderRadiusOnWidgetExtension**: Adds circular border radius to a widget.
  - `withCircularBorderRadius(double radius)`: Wraps the widget with a `Container` that has a circular border radius.

### 3. Hooks

- **Loading Overlay Hook**:
  - **useLoadingOverlay**: A hook to manage loading overlay in your Flutter application.
  - **LoadingOverlay**: A widget that displays a loading overlay.

- **useWireframeInputDecoration**: A hook to create wireframe-style `InputDecoration` objects.

- **useWireframeTextFieldTextStyle**: A hook to create wireframe-style `TextStyle` for TextField objects.

### 4. Utilities

- **Color Utilities**:
  - `hexToColor(String hexString, {String alphaChannel = 'FF'})`: Converts a hex color string to a `Color`.

- **Partition Utilities**:
  - `PartitionIterator`: An iterator to iterate over partitions of a list.
  - `Partition`: A utility class to partition an iterable into smaller lists.

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

You can import the package and use the provided utilities as follows:

```dart
import 'package:common_mobile/common_mobile.dart';

// Example: Using an extension to align a widget
Widget myWidget = Container().alignCenter();

// Example: Partitioning a list
final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
final partitioned = numbers.partition(3);
print(partitioned); // [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
```

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue.

## License

This package is licensed under the MIT License. See the `LICENSE` file for more details.

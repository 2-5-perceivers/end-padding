# End Padding Utils

<div align="center">

  [![GitHub stars][github_stars_badge]][github_stars_link]
  [![Package: end_padding][package_badge]][package_link]
  [![Language: Dart][language_badge]][language_link]
  [![License: MIT][license_badge]][license_link]

</div>

[github_stars_badge]: https://img.shields.io/github/stars/2-5-perceivers/end-padding?style=flat&color=yellow
[github_stars_link]: https://github.com/2-5-perceivers/end-padding/stargazers
[package_badge]: https://img.shields.io/pub/v/end_padding?color=green
[package_link]: https://pub.dev/packages/end_padding
[language_badge]: https://img.shields.io/badge/language-Dart-blue
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/2-5-perceivers/end-padding
[license_link]: https://opensource.org/licenses/MIT

The simplest package you will need. Made for simply adding padding at the end of lists to make sure system navigation or floating action buttons don't cover the last widgets.

## Installation

To use this package, add end_padding as a dependency using:
```
flutter pub add end_padding
```

## Getting started

Just add EndPadding or SilverEndPadding to the end of your widget lists. Or use the extension on `List<Widget>`.

## Usage

```dart
const EndPadding(),
```

```dart
const SliverEndPadding(),
```

```dart
ListView(
    children: someListOfWidgets.endPadding(),
)
```

For further details, visit the [documentation](https://pub.dev/documentation/end_padding/latest/).

Example of a colored EndPadding with a floating action button:

![Padding Image](https://github.com/2-5-perceivers/end-padding/blob/master/images/padding.jpg?raw=true)
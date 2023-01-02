# Final Padding Utils

A package that provides utils for creating final paddings

## Features

This package allows to add a final safe area type padding to your pages. This allows adding padding so list children are not obscured by fabs, system navigation buttons when in edgeToEdge mode or the keyboard, even when there is a M3 navigation bar.

## Getting started

Just add FinalPadding or SilverFinalPadding to the end of your pages.

## Usage

```dart
const SliverFinalPadding(
    useFloating: true,
    useKeyboard: true,
)
```
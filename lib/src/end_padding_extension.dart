import 'package:end_padding/src/list_padding.dart';
import 'package:end_padding/src/sliver_padding.dart';
import 'package:flutter/widgets.dart';

/// Extension for List<Widget> to add padding at the end of the list
extension EndPaddingExtension on List<Widget> {
  /// Add [EndPadding] at the end of the list
  List<Widget> endPadding({
    bool useFloating = false,
    bool useSystemNavigation = true,
    double otherPadding = 0,
  }) =>
      [
        ...this,
        EndPadding(
          useFloating: useFloating,
          useSystemNavigation: useSystemNavigation,
          otherPadding: otherPadding,
        ),
      ];

  /// Add [SliverEndPadding] at the end of the list
  List<Widget> sliverEndPadding({
    bool useFloating = false,
    bool useSystemNavigation = true,
    double otherPadding = 0,
  }) =>
      [
        ...this,
        SliverEndPadding(
          useFloating: useFloating,
          useSystemNavigation: useSystemNavigation,
          otherPadding: otherPadding,
        ),
      ];
}

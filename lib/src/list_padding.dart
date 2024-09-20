import 'package:flutter/material.dart';

/// End padding for box lists
///
/// See:
/// * [SliverEndPadding]
class EndPadding extends StatelessWidget {
  /// Creates an end padding for box lists
  const EndPadding({
    super.key,
    this.useFloating = false,
    this.useSystemNavigation = true,
    this.otherPadding = 0,
  });

  /// Enable padding so the list can be overscrolled so the FAB doesn't overlap
  /// the last widgets in the list
  ///
  /// Defaults to false
  final bool useFloating;

  /// Enable padding so the list can be overscrolled so the system navigation
  /// doesn't overlap the last widget
  ///
  /// This is only applied when in edge to edge mode
  ///
  /// Defaults to true
  final bool useSystemNavigation;

  /// Other padding to add
  final double otherPadding;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        height: paddingSize(
          context: context,
          useFloating: useFloating,
          useSystemNavigation: useSystemNavigation,
          otherPadding: otherPadding,
        ),
      );

  /// Calculate the padding size
  static double paddingSize({
    required BuildContext context,
    required bool useFloating,
    required bool useSystemNavigation,
    required double otherPadding,
  }) {
    const fabHeight = 56 + 16 * 2; // default fab height + padding of it
    var padding = otherPadding;

    if (useSystemNavigation) {
      padding += MediaQuery.viewPaddingOf(context).bottom;
    }

    if (useFloating && MediaQuery.viewInsetsOf(context).bottom < fabHeight) {
      padding += fabHeight;
    }

    return padding;
  }
}

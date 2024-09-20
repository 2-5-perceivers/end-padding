import 'package:end_padding/src/list_padding.dart';
import 'package:flutter/widgets.dart';

/// Final padding for sliver lists
///
/// See:
/// * [EndPadding]
class SliverEndPadding extends StatelessWidget {
  /// Creates a final padding for box widgets
  const SliverEndPadding({
    super.key,
    this.useFloating = false,
    this.useSystemNavigation = true,
    this.otherPadding = 0,
  });

  /// Enable padding so the [CustomScrollView] can be overscrolled so the fab
  /// doesn't overlap the last widget
  ///
  /// Defaults to false
  final bool useFloating;

  /// Enable padding so the [CustomScrollView] can be overscrolled so the
  /// system navigation doesn't overlap the last widget
  ///
  /// This is only applied when in edge to edge mode
  ///
  /// Defaults to true
  final bool useSystemNavigation;

  /// Other padding to add
  final double otherPadding;

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: EdgeInsets.only(
          bottom: EndPadding.paddingSize(
            context: context,
            useFloating: useFloating,
            useSystemNavigation: useSystemNavigation,
            otherPadding: otherPadding,
          ),
        ),
      );
}

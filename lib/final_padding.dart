library final_padding;

import 'dart:math';

import 'package:flutter/material.dart';

/// Final padding for box widgets
/// 
/// See:
/// * [SliverFinalPadding]
class FinalPadding extends StatelessWidget {
  /// Creates a final padding for box widgets
  const FinalPadding({
    super.key,
    this.useFloating = false,
    this.useSystemNavigation = true,
    this.useKeyboard = false,
    this.insideBottomBarView = false,
  });

  /// Enable padding so the list can be overscrolled so the fab doesn't overlap
  /// the last widget
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

  /// Enable padding so the list can be overscrolled so the keyboard doesn't
  /// overlap items
  /// 
  /// Defaults to false
  final bool useKeyboard;

  /// If this is true, padding will be adjusted in function of the M3 
  /// [NavigationBar]
  /// 
  /// Use this only when your scaffold has an [NavigationBar]
  /// 
  /// Defaults to false
  final bool insideBottomBarView;

  @override
  Widget build(final BuildContext context) {
    return SizedBox(
      height: _finalSize(
        context: context,
        useFloating: useFloating,
        useSystemNavigation: useSystemNavigation,
        useKeyboard: useKeyboard,
        insideBottomBarView: insideBottomBarView,
      ),
    );
  }
}

/// Final padding for sliver widgets
/// 
/// See:
/// * [FinalPadding]
class SliverFinalPadding extends StatelessWidget {
  /// Creates a final padding for box widgets
  const SliverFinalPadding({
    super.key,
    this.useFloating = false,
    this.useSystemNavigation = true,
    this.useKeyboard = false,
    this.insideBottomBarView = false,
  });

  /// Enable padding so the [CustomScrollView] can be overscrolled so the fab doesn't overlap
  /// the last widget
  /// 
  /// Defaults to false
  final bool useFloating;

  /// Enable padding so the [CustomScrollView] can be overscrolled so the system navigation
  /// doesn't overlap the last widget
  /// 
  /// This is only applied when in edge to edge mode
  /// 
  /// Defaults to true
  final bool useSystemNavigation;

  /// Enable padding so the [CustomScrollView] can be overscrolled so the keyboard doesn't
  /// overlap items
  /// 
  /// Defaults to false
  final bool useKeyboard;

  /// If this is true, padding will be adjusted in function of the M3 
  /// [NavigationBar]
  /// 
  /// Use this only when your scaffold has an [NavigationBar]
  /// 
  /// Defaults to false
  final bool insideBottomBarView;

  @override
  Widget build(final BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
        bottom: _finalSize(
          context: context,
          useFloating: useFloating,
          useSystemNavigation: useSystemNavigation,
          useKeyboard: useKeyboard,
          insideBottomBarView: insideBottomBarView,
        ),
      ),
    );
  }
}

double _finalSize({
  required final BuildContext context,
  required final bool useFloating,
  required final bool useSystemNavigation,
  required final bool useKeyboard,
  required final bool insideBottomBarView,
}) {
  const double fabHeight = 56 + 16 * 2; // default fab height + padding of it
  double padding = 0;

  if (useKeyboard) {
    padding += max(
      MediaQuery.viewInsetsOf(context).bottom -
          MediaQuery.viewPaddingOf(context).bottom,
      0,
    );
  }

  if (useSystemNavigation && !insideBottomBarView) {
    padding += MediaQuery.viewPaddingOf(context).bottom;
  }

  if (insideBottomBarView) {
    padding = max(padding - 80, 0);
  }

  if (useFloating && MediaQuery.viewInsetsOf(context).bottom < fabHeight) {
    padding += fabHeight;
  }

  return padding;
}

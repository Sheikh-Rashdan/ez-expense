import 'package:ez_expense/constants/colors.dart';
import 'package:ez_expense/constants/text_styles.dart';
import 'package:flutter/material.dart';

class SliverPageColumn extends StatelessWidget {
  const SliverPageColumn({
    super.key,
    required this.title,
    required this.children,
    this.scrollable = true,
  });

  final String title;
  final List<Widget> children;
  final bool scrollable;

  void _onNavigationMenuPressed(BuildContext context) {
    if (!context.mounted) return;
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: scrollable
          ? const ClampingScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      slivers: [
        SliverAppBar(
          title: Text(title),
          leading: IconButton(
            onPressed: () => _onNavigationMenuPressed(context),
            icon: Icon(
              Icons.menu_rounded,
              size: KTextStyles.regular28.fontSize,
              shadows: [
                Shadow(
                  offset: Offset(0, 1.5),
                  blurRadius: 2,
                  color: KColors.shadow,
                ),
              ],
            ),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate(children)),
      ],
    );
  }
}

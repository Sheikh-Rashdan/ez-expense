import 'package:ez_expense/constants/colors.dart';
import 'package:ez_expense/constants/text_styles.dart';
import 'package:flutter/material.dart';

class OutlinedLabelledColumn extends StatelessWidget {
  const OutlinedLabelledColumn({
    super.key,
    this.children = const [],
    required this.label,
    this.iconData,
    this.color = KColors.greenPrimary2,
    this.onTap,
  });

  final List<Widget> children;
  final String label;
  final IconData? iconData;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 2, color: color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                  bottom: Radius.circular(children.isEmpty ? 10 : 0),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Row(
                spacing: 6,
                children: [
                  Text(label, style: KTextStyles.regular22),
                  if (iconData != null)
                    Icon(iconData, size: KTextStyles.regular28.fontSize),
                  Spacer(),
                  if (onTap != null)
                    Container(
                      decoration: ShapeDecoration(
                        color: KColors.highlight,
                        shape: StadiumBorder(),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      child: Icon(Icons.chevron_right_rounded),
                    ),
                ],
              ),
            ),
          ),
          ...children,
        ],
      ),
    );
  }
}

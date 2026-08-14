import 'package:ez_expense/constants/text_styles.dart';
import 'package:ez_expense/widgets/container/white_card.dart';
import 'package:ez_expense/widgets/input/expense_template_chip.dart';
import 'package:ez_expense/widgets/input/translucent_outlined_button.dart';
import 'package:ez_expense/widgets/layout/horizontal_list_view.dart';
import 'package:flutter/material.dart';

class ExpenseTemplateCard extends StatelessWidget {
  const ExpenseTemplateCard({super.key});
  // TODO: params

  @override
  Widget build(BuildContext context) {
    return WhiteCard(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          // TODO: implement condition to check if templates exist
          if (true)
            HorizontalListView(
              height: 40,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ExpenseTemplateChip(
                  label: "$index" * 5,
                  color: Colors.pink,
                  onTap: () {},
                );
              },
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TranslucentOutlinedButton(
              label: Text(
                "${true ? "More" : "Create"} Templates",
                style: KTextStyles.regular22,
              ),
              icon: Icon(
                Icons.dashboard_customize_rounded,
                size: KTextStyles.regular22.fontSize,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

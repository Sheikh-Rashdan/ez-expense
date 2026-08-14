import 'package:ez_expense/constants/colors.dart';
import 'package:ez_expense/constants/page_paddings.dart';
import 'package:ez_expense/constants/text_styles.dart';
import 'package:ez_expense/widgets/container/white_card.dart';
import 'package:ez_expense/widgets/input/expense_template_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateExpensePage extends StatefulWidget {
  const CreateExpensePage({super.key});

  @override
  State<CreateExpensePage> createState() => _CreateExpensePageState();
}

class _CreateExpensePageState extends State<CreateExpensePage> {
  final TextEditingController _amountController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Expense")),
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          horizontal: KPagePaddings.horizontalMargin,
          vertical: KPagePaddings.columnSpacing,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: KPagePaddings.columnSpacing,
            children: [
              ExpenseTemplateCard(),
              WhiteCard(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: KColors.greenPrimary2,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text("Amount", style: KTextStyles.regular28),
                          _AmountField(amountController: _amountController),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AmountField extends StatefulWidget {
  const _AmountField({required this._amountController});

  final TextEditingController _amountController;

  @override
  State<_AmountField> createState() => _AmountFieldState();
}

class _AmountFieldState extends State<_AmountField> {
  double _getAmountWidth() {
    final String text = widget._amountController.text;
    final painter = TextPainter(
      text: TextSpan(
        text: text.isEmpty ? "0" : text,
        style: KTextStyles.regular36,
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    return painter.width + 50;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: _getAmountWidth(),
        child: TextField(
          controller: widget._amountController,
          decoration: InputDecoration(
            prefixText: "₹ ",
            prefixStyle: KTextStyles.regular36,
            hintText: "0",
            hintStyle: KTextStyles.regular36.copyWith(
              color: KColors.greenPrimary3,
            ),
          ),
          style: KTextStyles.regular36,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
          ],
          autofocus: true,
          onChanged: (_) {
            setState(() {});
          },
        ),
      ),
    );
  }
}

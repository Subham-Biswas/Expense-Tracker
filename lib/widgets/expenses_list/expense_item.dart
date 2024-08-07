import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              // style: Theme.of(context).textTheme.titleLarge,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('\u{20B9}${expense.amount.toStringAsFixed(2)}'),
                // since Category and Date should be in the extreme right
                const Spacer(),
                // spacer() ensures currency should be in the extreme left and the other two in the extreme right
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate), // calling getter
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

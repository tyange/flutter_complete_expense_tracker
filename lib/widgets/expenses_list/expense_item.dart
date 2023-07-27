import 'package:flutter/material.dart';

import 'package:flutter_complete_expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(children: [
          Text(expense.title),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(
                '\$${expense.amount.toStringAsFixed(2)}',
              ),
              const Spacer(),
              Row(
                children: [
                  const Icon(
                    Icons.alarm,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    expense.date.toString(),
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}

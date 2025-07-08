import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_card.dart';

class CancelTaskListScreen extends StatefulWidget {
  const CancelTaskListScreen({super.key});

  @override
  State<CancelTaskListScreen> createState() => _CancelTaskListScreenState();
}

class _CancelTaskListScreenState extends State<CancelTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(

        itemCount: 10,
        itemBuilder: (context, index) {
          return TaskCard(
            taskType: TaskType.Cancelled,
          );
        },
      ),
    );
  }
}

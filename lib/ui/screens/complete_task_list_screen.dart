import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_card.dart';

class CompleteTaskListScreen extends StatefulWidget {
  const CompleteTaskListScreen({super.key});

  @override
  State<CompleteTaskListScreen> createState() => _CompleteTaskListScreenState();
}

class _CompleteTaskListScreenState extends State<CompleteTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(

        itemCount: 10,
        itemBuilder: (context, index) {
          return TaskCard();
        },
      ),
    );
  }
}

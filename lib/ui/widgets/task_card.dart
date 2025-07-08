import 'package:flutter/material.dart';

enum TaskType{
  tNew,
  Progress,
  Completed,
  Cancelled,
}
class TaskCard extends StatelessWidget {

  const TaskCard({
    super.key, required this.taskType,
  });
  final TaskType taskType;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title Will be here',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Description',
              style: TextStyle(color: Colors.black54),
            ),
            Text('Date:12/12/12'),
            SizedBox(height: 8),
            Row(
              children: [
                Chip(
                  label: Text('New'),
                  backgroundColor: _getTaskChipColor(),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide.none,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit,color:Colors.greenAccent,),

                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete,color:Colors.red,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Color _getTaskChipColor(){
    // if(taskType==TaskType.tNew){
    //   return Colors.blue;
    // }
    // else if(taskType==TaskType.Progress){
    //   return Colors.purple;
    // }
    // else if(taskType==TaskType.Completed){
    //   return Colors.green;
    // }
    // else {
    //   return Colors.red;
    // }
    switch(taskType){

      case TaskType.tNew:
        return Colors.blue;
      case TaskType.Progress:
        return Colors.purple;
      case TaskType.Completed:
        return Colors.green;
      case TaskType.Cancelled:
        return Colors.red;
    }

  }
}

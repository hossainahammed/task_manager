import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

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
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
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
}

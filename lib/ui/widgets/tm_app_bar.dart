import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/sign_in_screen.dart';

class TaskManagerAppBar extends StatefulWidget implements PreferredSizeWidget {
  const TaskManagerAppBar({
    super.key,
  });

  @override
  State<TaskManagerAppBar> createState() => _TaskManagerAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>Size.fromHeight(kToolbarHeight);
}

class _TaskManagerAppBarState extends State<TaskManagerAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        children: [
          CircleAvatar(),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hossain Ahammed',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'hossain627@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          IconButton(onPressed:_onTapLogoutButton, icon: Icon(Icons.logout_outlined)),
        ],
      ),
    );
  }

void _onTapLogoutButton(){
 Navigator.pushNamedAndRemoveUntil(context, SignInScreen.name, (predicate)=>false);
}


}

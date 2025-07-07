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
          CircleAvatar(
            radius: 20.0,
            backgroundImage:NetworkImage('https://scontent.fdac198-1.fna.fbcdn.net/v/t39.30808-6/480468323_2092966654471743_3439343231728926675_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeFMUI1Y_brqm7yt7Ubs-OiO2jIFX1frtODaMgVfV-u04GhkY7LHt7hZbwly0eoLFmXxHLoQfvlZN48Whxz6mRqQ&_nc_ohc=55TYNfi1faIQ7kNvwGhDMnV&_nc_oc=AdnrflqU5gR8xclBl3ajBoABqbWKBftbWHqksn2harCcp6_vTEBJ3I1eVMESCxHIKdk&_nc_zt=23&_nc_ht=scontent.fdac198-1.fna&_nc_gid=ciNP6IVWFiqUmxlDUi4y6w&oh=00_AfRXhS-Ko4ajDCXHlanX7vjY9_MfODwJM_TVDmUh5__hhA&oe=6871B4D2'),
          ),
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

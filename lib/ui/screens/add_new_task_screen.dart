import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_bagground.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  static const String name = '/add-new-task';
  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  final TextEditingController _titleTEController=TextEditingController();
  final TextEditingController _desriptionTEController=TextEditingController();
   final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskManagerAppBar(),
      body: ScreenBagground(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formkey,
            autovalidateMode:AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Text(
                  'Add New Task',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _titleTEController,
                  validator: (String? value){
                    if(value?.trim().isEmpty??true)
                      {
                        return 'Enter your title';
                      }
                    return null;
                  },

                    decoration: InputDecoration(
                    hintText: 'Title'
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _desriptionTEController,
                  validator: (String? value){
                    if(value?.trim().isEmpty??true)
                    {
                      return 'Enter your description';
                    }
                    return null;
                  },
                  maxLines: 5,
                  decoration: InputDecoration(
                      hintText: 'Description'
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_circle_right_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _onTapSubmitbutoon(){
    if(_formkey.currentState!.validate()){
      // TODO ADD New Task
    }
    Navigator.pop(context);
  }
 @override
  void dispose() {
   _titleTEController.dispose();
   _desriptionTEController.dispose();
    super.dispose();
  }
}

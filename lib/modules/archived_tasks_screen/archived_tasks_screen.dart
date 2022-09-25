import 'package:flutter/cupertino.dart';

class ArchivedTasksScreen extends StatelessWidget {
  const ArchivedTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ArchivedTasks',
        style: TextStyle(
          fontSize:40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

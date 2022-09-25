import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/modules/archived_tasks_screen/archived_tasks_screen.dart';
import 'package:flutter_application_5/modules/done_tasks_screen/done_tasks_screen.dart';

import '../modules/new_tasks_screen/new_tasks_screen.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  int currentIndex=0;
  List<Widget> screens =[
    const NewTasksScreen(),
    const DoneTasksScreen(),
    const ArchivedTasksScreen(),
  ];
  List<String> title =[
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            title[currentIndex]
        ),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        child:
        const Icon(Icons.add),
        onPressed: ()
        {
          getName().then((value)
          {
            print(value);
            print('osama');
            throw('some error');
          }).catchError((error){
            print('error${error.toString()}');
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(

              icon: Icon(Icons.menu),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.cloud_done_sharp),
            label: 'Done',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.archive),
            label: 'Archived',
          ),
        ],
      ),
    );
  }

  Future<String> getName() async
  {
    return 'Ahmed Ali';
  }
}

import 'package:flutter/material.dart';
import 'package:mock_ui/theme/colors.dart';

import '../models/task_model.dart';

List<TaskModel> tasks = [
  TaskModel(taskName: "Activity Check #1", status: true),
  TaskModel(taskName: "Activity Check #2", status: false),
  TaskModel(taskName: "Activity Check #3", status: true),
];

class TasksCard extends StatelessWidget {
  const TasksCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: kDarkGreen,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Tasks",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
              child: Column(
                children: [
                  ...tasks.map(
                    (e) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e.taskName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.check,
                          color: e.status ? Colors.green : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

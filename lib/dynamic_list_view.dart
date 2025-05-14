import 'package:flutter/material.dart';
import 'package:sawera_project/models/notification.dart';

class DynamicListView extends StatefulWidget {
  DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  List<NotificationModel> notificationList = [
    NotificationModel(
        title: 'First Notification',
        description: 'First Description ',
        time: '12:45 PM'),
    NotificationModel(
        title: 'Second Notification',
        description: 'Second Description ',
        time: '1:45 PM'),
    NotificationModel(
        title: 'Third Notification',
        description: 'Third Description ',
        time: '2:45 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic ListView Demo"),
      ),
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                // padding: const EdgeInsets.only(top: 20, left: 40, right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(notificationList[i].title),
                  subtitle: Text(notificationList[i].description),
                  trailing:Text(notificationList[i].time),
                  // tileColor: Colors.blue,
                ),
              ),
            );
          }),
    );
  }
}

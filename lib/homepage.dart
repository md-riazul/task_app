import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_app/activity_page.dart';
import 'package:task_app/task_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEEF0F4),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffEEF0F4),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi Samantha',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0C183D),
                ),
              ),
              Text(
                'Do you have 4 task',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('images/profile.jpg'),
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Color(0xffB0E2B6),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.calendar_month_rounded,
                                color: Color(0xff0C183D),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '25 July',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.circle, size: 6),
                            SizedBox(width: 3),
                            Icon(Icons.circle, size: 6),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Color(0xffD7F2DB),
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ActivityPage()));
                                },
                                child: Text(
                                  "Design Team",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.0),
                                ))),
                        SizedBox(height: 10),
                        Text(
                          'Create User Flow for Client',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0C183D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Task List',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0C183D),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      tileColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      leading: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          taskList[index].icon,
                          color: Color(0xff0C183D),
                        ),
                      ),
                      title: Text(
                        '${taskList[index].title}',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(''),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

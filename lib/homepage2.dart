import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_app/task_model2.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEEF0F4),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color(0xffB0E2B6),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back)),
                              Text(
                                "Task Details",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 40),
                              Text(
                                'Create User Flow for Client',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0C183D),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Row(
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
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 12),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Color(0xffD7F2DB),
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                    ),
                                    child: Text('Design Team'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Task List',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0C183D),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: taskList2.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ExpansionTile(
                            title: Text(
                              '${taskList2[index].title}',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            leading: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                taskList2[index].icon,
                                color: Color(0xff0C183D),
                              ),
                            ),
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Text(
                                  index == 0
                                      ? "Research pattern flow refers to the process of identifying, analyzing, and documenting recurring patterns in research data. It involves understanding the relationships between various research elements to develop insights and recommendations for future research."
                                      : index == 1
                                          ? "Creating options for user flow involves designing different paths or scenarios that users can take to achieve their goals within a website, application, or system. These options are typically based on user research, analytics, and feedback, and aim to improve the user experience and increase engagement."
                                          : index == 2
                                              ? "Rapid prototyping is a design methodology that involves quickly creating a basic version of a product or service to test its functionality and user experience. It typically involves creating a low-fidelity prototype using simple materials, such as paper or wireframes, and testing it with users to gather feedback and refine the design."
                                              : "",
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

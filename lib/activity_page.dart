import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/homepage2.dart';
import 'package:task_app/model.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffEEF0F4),
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              iconSize: 24,
            ),
            backgroundColor: Color(0xffEEF0F4),
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Create New",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          body: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose Activity",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  "Choose activity to create new task",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: iconList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.65,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: EdgeInsets.all(28),
                                      child: SvgPicture.asset(
                                          "${iconList[index].icon}"),
                                    )),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Expanded(
                                  child: Text(
                                "${iconList[index].title}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                MaterialButton(
                  height: 70,
                  minWidth: double.infinity,
                  color: Color(0xFF021842),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage2()));
                  },
                  child: Text(
                    "Choose Activity",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

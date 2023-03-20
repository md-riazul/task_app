import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
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
          SizedBox(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xffD7F2DB),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: Text('Design Team'),
              ),
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
    );
  }
}

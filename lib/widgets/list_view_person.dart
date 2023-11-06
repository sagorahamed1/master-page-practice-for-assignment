import 'package:flutter/material.dart';
import 'package:master_page_example/data_class/person.dart';

class ListViewPerson extends StatelessWidget {
  Person person;
  ListViewPerson({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        elevation: 1,
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Image.asset(person.image)),

            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(right: 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${person.name}", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                        Text("${person.designation}"),
                        Text("${person.email}"),
                        Text("${person.phoneNo}"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

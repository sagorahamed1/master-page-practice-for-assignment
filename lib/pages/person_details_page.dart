import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:master_page_example/data_class/person.dart';

class PersonDetailsPage extends StatelessWidget {

   Person person;
   PersonDetailsPage({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  margin: const EdgeInsets.only(left: 40,right: 40,top: 30),
                  child: Image.asset(person.image,fit: BoxFit.cover,),
                ),
                const SizedBox(height: 20,),

                Text("Name: ${person.name}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                Text("Designation : ${person.designation}"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.mail),
                    Text("email address : ${person.email}"),
                  ],
                ),

                InkWell(
                    onTap: () async{
                      // getpermission();
                      FlutterPhoneDirectCaller.callNumber(person.phoneNo);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.call),
                        Text("Contact : ${person.phoneNo}"),
                      ],
                    )
                ),
                
                SizedBox(height: 30,),
                Text(person.about)
              ],
            ),
          ),
        )
    );
  }
}
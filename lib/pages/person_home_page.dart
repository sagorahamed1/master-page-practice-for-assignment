import 'package:flutter/material.dart';
import 'package:master_page_example/data_class/person.dart';
import 'package:master_page_example/pages/person_details_page.dart';
import 'package:master_page_example/widgets/list_view_person.dart';


class PersonHomePage extends StatelessWidget {
  const PersonHomePage({super.key});

  //make person information
  List <Person> getPersonsInfo(){
    List <Person> list = [];
    list.add(Person(image: 'assets/person1.jpg', name: 'John Doe', designation: 'Software Engineer', email: 'john.doe@example.com', phoneNo: '017456-7890', about: 'Experienced software engineer with a strong background in developing web and mobile applications. Proficient in multiple programming languages and technologies.'));
    list.add(Person(image: 'assets/person2.jpg', name: 'Miss soraya', designation: 'Product Manager', email: 'Miss.soraya@example.com', phoneNo: '014567-8901', about: 'Results-driven product manager with a proven track record of leading cross-functional teams to deliver innovative and user-centric products.'));
    list.add(Person(image: 'assets/person3.jpg', name: 'David Johnson', designation: 'Graphic Designer', email: 'david.johnson@example.com', phoneNo: '013678-9012',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));
    list.add(Person(image: 'assets/person4.jpg', name: 'Emily Brown', designation: 'Marketing Specialist', email: 'emily.brown@example.com', phoneNo: '016789-0123',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));
    list.add(Person(image: 'assets/person5.jpg', name: 'Michael Wilson', designation: 'Financial Analyst', email: 'michael.wilson@exale.com', phoneNo: '019890-1234',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));
    list.add(Person(image: 'assets/person6.jpg', name: 'Sarah Davis', designation: 'HR Manager', email: 'sarah.davis@example.com', phoneNo: '015901-2345',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));
    list.add(Person(image: 'assets/person7.jpg', name: 'Robert Lee', designation: 'Sales Representative', email: 'robert.lee@example.com', phoneNo: '015012-3456',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));
    list.add(Person(image: 'assets/person8.jpg', name: 'Linda Harris', designation: 'Customer Support', email: 'linda.harris@example.com', phoneNo: '018123-4567',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));
    list.add(Person(image: 'assets/person9.jpg', name: 'William Clark', designation: 'Architect', email: 'william.clark@example.com', phoneNo: '016234-5678',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));
    list.add(Person(image: 'assets/person10.jpg', name: 'Karen Turner', designation: 'Data Analyst', email: 'karen.turner@example.com', phoneNo: '014345-6789',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));
    list.add(Person(image: 'assets/person11.jpg', name: 'James Baker', designation: 'Consultant', email: 'james.baker@example.com', phoneNo: '014456-7890',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));
    list.add(Person(image: 'assets/person12.jpg', name: 'Amanda White', designation: 'Researcher', email: 'amanda.white@example.com', phoneNo: '013567-8901',  about: 'Talented graphic designer specializing in creating visually appealing designs and illustrations. Proficient in industry-standard design software.'));

    return list;
  }

  @override
  Widget build(BuildContext context) {
    List personInfoList = getPersonsInfo();
    return Scaffold(

       appBar: AppBar(
         elevation: 0.0,
         backgroundColor: Colors.white,
         centerTitle: true,
         leading: Icon(Icons.menu, color: Colors.black,),
         title: Text("Employee",style: TextStyle(color: Colors.black),),
       ),



       body: ListView.builder(
           itemCount: getPersonsInfo().length,
           itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> PersonDetailsPage(person: personInfoList[index])));
              },
              child: ListViewPerson(person: personInfoList[index]),
            );
           },
       ),
    );
  }
}

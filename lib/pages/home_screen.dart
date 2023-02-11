import 'package:flutter/material.dart';
import 'attedance_list_classes/attendance_list_class_1.dart';
import 'attedance_list_classes/attendance_list_class_2.dart';
import 'attedance_list_classes/attendance_list_class_3.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:  Container(
        padding:  const EdgeInsets.only( top: 50, left: 25, right: 25),
        //alignment: Alignment.topCenter,
        child : SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.account_circle_outlined,

                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Class",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.purple,
                    ),
                  )
                ],

              ),
              const SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 135,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child :Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text(
                        "Class Code",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Class Name",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              iconSize: 20,
                              icon : const Icon(Icons.arrow_forward_ios),
                              color: Colors.white,
                              onPressed: (){
                                Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context)=> const AttendancePage1(),
                                  ),
                                );
                              }

                          ),

                        ],
                      )
                    ],
                  ),
                ),


              ),
              const SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 135,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child :Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text(
                        "Class Code",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Class Name",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              iconSize: 20,
                              icon : const Icon(Icons.arrow_forward_ios),
                              color: Colors.white,
                              onPressed: (){
                                Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context)=> const AttendancePage2(),
                                  ),
                                );
                              }

                          ),

                        ],
                      )
                    ],
                  ),
                ),


              ),
              const SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 135,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child :Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text(
                        "Class Code",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Class Name",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              iconSize: 20,
                              icon : const Icon(Icons.arrow_forward_ios),
                              color: Colors.white,
                              onPressed: (){
                                Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context)=> const AttendancePage3(),
                                  ),
                                );
                              }

                          ),

                        ],
                      )
                    ],
                  ),
                ),


              ),


            ],
          ),
        )



      ),

    );
  }
}

import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            const SizedBox(height: 100,),

            Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(70),topLeft: Radius.circular(40) )
            ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 25,),
                    Image(image: AssetImage('lib/images/intro_1.png'),
                        height: 235,),
                  ],
                ),
              ),
             ),
           const SizedBox(height: 30,),
           Container(
             padding: const EdgeInsets.only(left: 10,right: 20),
             alignment: Alignment.center,
             child: Column (
               children: const[
                 Text('Simple yet practical',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.blueGrey,
                       fontSize: 30
                   ),),
                 SizedBox(height: 20,),
                 Text('Browse the list of class attendance to see the records and Add new attendance record both manual and QRscan.',
                 style: TextStyle(fontSize: 16),
                 textAlign: TextAlign.justify,)
               ],
             ),
           ),

          ],
        ),
      ),

    );
  }
}


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
                    Image(image: AssetImage('lib/images/image_1.png'),),
                  ],
                ),
              ),
             ),
           const SizedBox(height: 40,),
           Container(
             padding: const EdgeInsets.only(left: 10,right: 20),
             alignment: Alignment.center,
             child: Column (
               children: const[
                 Text('Efficient Students Presence',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.blueGrey,
                       fontSize: 30
                   ),),
                 SizedBox(height: 20,),
                 Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
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


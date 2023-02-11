import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            const SizedBox(height: 100,),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(70),topRight: Radius.circular(40) )
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 25,),
                    Image(image: AssetImage('lib/images/image_3.png'),),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40,),
            Container(
              padding: const EdgeInsets.only(left: 20,right: 10),
              alignment: Alignment.center,
              child: Column (
                children: const[
                  Text('Boost Productivity    Now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 30
                    ),),
                  SizedBox(height: 20,),
                  Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ',
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



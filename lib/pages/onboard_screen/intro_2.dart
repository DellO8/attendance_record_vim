import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 100,),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(
                  color: Colors.teal,
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 25,),
                    Image(image: AssetImage('lib/images/image_2.png'),),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40,),
            Container(
              padding: const EdgeInsets.only(left: 20,right: 20),
              alignment: Alignment.center,
              child: Column (
                children: const[
                  Text('Track Daily    Attendance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 30
                    ),),
                  SizedBox(height: 20,),
                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s.',
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


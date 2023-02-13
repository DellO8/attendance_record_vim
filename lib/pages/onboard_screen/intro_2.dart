import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
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
                    Image(image: AssetImage('lib/images/intor_2.png'),
                    height: 235,),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.only(left: 20,right: 20),
              alignment: Alignment.center,
              child: Column (
                children: const[
                  Text('Looking for Specific User',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 30
                    ),),
                  SizedBox(height: 20,),
                  Text('Quickly and easily find what you are looking for with the search function, just key in the search bar.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.justify,)
                ],
              ),
            ),
          ],
        ),
    );
  }
}


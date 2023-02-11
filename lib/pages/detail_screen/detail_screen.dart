import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.students}) : super(key: key);

  final Map<String, dynamic> students;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
      ),

         body: Column(
           children: [
             const SizedBox(height: 20,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                CircleAvatar(
                    radius: 70,
                    child: Text(students["names"][0])),
              ] ,

             ),
             const SizedBox(height: 10,),
               Column(
                 children: [
                     Text(students["names"],
                     style: const TextStyle(
                       fontSize: 20,
                     ),),
                 ],
               ),
             const SizedBox(height: 10,),
             Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Icon(Icons.phone, color: Colors.blueGrey),
                     const SizedBox(width: 10),
                     Text(students["contact"],
                       style: const TextStyle(
                         color: Colors.blueGrey,
                       ),),
                   ],
                 )
               ],
             ),
           ],
         ),

    );
  }
}


// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Colors.teal,
//       title: Text(students['names']),
//     ),
//     body: Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Text(students['timestamp']),
//     ),
//   );
// }
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       elevation: 0,
//       backgroundColor: Colors.teal,
//       title: Text(students['names']),
//     ),
//     body: Stack(
//       children:<Widget> [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: 200,
//           color: Colors.teal,
//         ),
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: CircleAvatar(
//             child: Text(students["names"][0]),
//             radius: 70,
//           ),
//         ),
//         OverflowBox(
//           alignment: Alignment.bottomCenter,
//           maxHeight: 200,
//           maxWidth: MediaQuery.of(context).size.width,
//           child: CircleAvatar(
//             child: Text(students["names"][0]),
//             radius: 70,
//           ),
//           // overflow: Overflow.visible,
//         ),
//       ],
//     ),
//   );
// }
// }
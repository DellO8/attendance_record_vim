 import 'package:flutter/material.dart';
 import 'package:intl/intl.dart';
 import 'package:shared_preferences/shared_preferences.dart';


 class AttendancePage3 extends StatefulWidget {
   const AttendancePage3({Key? key}) : super(key: key);

  @override
   State<AttendancePage3> createState() => _AttendancePageState3();
 }

 class _AttendancePageState3 extends State<AttendancePage3> {


   final TextEditingController _controller = TextEditingController();
   final _scrollcontroller = ScrollController();

   int? format;

   bool displayActualTime = false;
   bool _showEditBtn = false;
   List<bool> _selection = List.generate(2, (_) =>false );

   List<Map<String, dynamic>> students =[

     {"names":"Dell", "timestamp":"11 Feb 2023, 08:00 AM"},
     {"names":"Oxford", "timestamp":"11 Feb 2023, 08:00 AM"},
     {"names":"valentine", "timestamp":"11 Feb 2023, 08:01 AM"},
     {"names":"Brian", "timestamp":"11 Feb 2023, 08:02 AM"},
     {"names":"John", "timestamp":"11 Feb 2023, 08:02 AM"},
     {"names":"Rick", "timestamp":"11 Feb 2023, 08:02 AM"},
     {"names":"Ollie", "timestamp":"11 Feb 2023, 08:03 AM"},
     {"names":"Max", "timestamp":"11 Feb 2023, 08:04 AM"},
     {"names":"Jacob", "timestamp":"11 Feb 2023, 08:04 AM"},
     {"names":"Ledford", "timestamp":"11 Feb 2023, 08:04 AM"},
   ];



   List<Map<String, dynamic>> _foundSearch = [];
   @override
   initState(){

     _foundSearch = students;
     super.initState();
     _loadData();
     _sortDate();

     _scrollcontroller.addListener(() {
       if (_scrollcontroller.position.atEdge) {
         bool isTop = _scrollcontroller.position.pixels == 0;
         if (isTop) {
         } else {
           const snackbar = SnackBar(
             content: Text('You have reached the end of the list'),
             duration: Duration(seconds:  3,
             ),
           );
           ScaffoldMessenger.of(context).showSnackBar(snackbar);
         }
       }
     });

   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.teal,
         elevation: 0,
         title: const Text(
           'Attendance',
           style :TextStyle(
             color:Colors.white,
           ),
         ),


         actions: [

           ToggleButtons(children: const [
             Icon(Icons.timer_outlined),
             Icon(Icons.edit)
           ], isSelected: _selection,
             onPressed: (int index){
               setState(() {
                 _selection[index]=!_selection[index];
                 if(index ==0){
                   displayActualTime = !displayActualTime;
                   _saveData();
                 }else if (index == 1){
                   _showEditBtn = !_showEditBtn;
                 }
               });
             },
             color: Colors.white,
             selectedColor: Colors.orange,
             renderBorder: false,
           )
         ],
       ),
       body:Container(
           padding: const EdgeInsets.all(15),
           child:Column(
             children: [

               TextField(
                 onChanged: (value) => _runFilter(value),
                 decoration: const InputDecoration(

                     labelText: 'Search', suffixIcon: Icon(Icons.search)),
               ),

               const SizedBox(height: 20,),
               Expanded(
                 child: ListView.builder(
                   controller: _scrollcontroller,
                   itemCount: _foundSearch.length,
                   itemBuilder: (context, index){
                     return ListTile(
                       leading: CircleAvatar(child: Text(_foundSearch[index]["names"][0]),),
                       title: Text(_foundSearch[index]["names"]),
                       subtitle: Text(getTimeDisplay(index)),
                       trailing:_showEditBtn
                           ?IconButton(
                         icon: const Icon(Icons.delete),
                         onPressed: () {
                           setState(() {
                             students.removeAt(index);
                           });
                         },
                       )
                           : null,
                     );
                   },
                 ),
               )
             ],
           )
       ),


       floatingActionButton: FloatingActionButton(
         onPressed: () async{
           final name = await openDialog();
           if (name == null || name.isEmpty) return;

         },
         child: const Icon(Icons.add),
       ),
     );

   }
   Future<String?> openDialog() => showDialog<String?>(
     context: context,
     builder: (context)=>  AlertDialog(
       title: const Text('Name'),
       content:  TextField(
         decoration:  const InputDecoration(hintText: 'Enter name'),
         controller: _controller,
         onChanged: (value){},
       ),


       actions: [
         TextButton(
           onPressed: _submitData,
           child: const Text('Submit'),
         ),
       ],
     ),);

   void _submitData() {

     setState(() {
       students.add({"names": _controller.text,
         "timestamp": DateFormat("dd MMM yyyy, h:mm a").format(DateTime.now())});
       _sortDate();
       const snackbar = SnackBar(content:
       Text("Added to the list"),
         duration: Duration(seconds: 3),
       );
       ScaffoldMessenger.of(context).showSnackBar(snackbar);
     });
     _controller.clear();
     Navigator.of(context).pop();
   }

   String getTimeDisplay(int index) {
     String timeString = _foundSearch[index]["timestamp"];
     DateTime time = DateFormat("dd MMM yyyy, h:mm a").parse(timeString);
     Duration timeDifference = DateTime.now().difference(time);
     if (displayActualTime) {
       return timeString;
     } else {
       return "${timeDifference.inHours} hour ago, ${timeDifference.inMinutes} minutes ago";
     }
   }

   _loadData() async {
     SharedPreferences pref = await SharedPreferences.getInstance();
     setState(() {
       displayActualTime = pref.getBool("displayActualTime") ?? false;
       _showEditBtn = pref.getBool("showEditBtn") ?? false;
     });
     _selection = [displayActualTime, _showEditBtn];
   }

   _saveData() async {
     SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setBool("displayActualTime", displayActualTime);
     pref.setBool("showEditBtn", _showEditBtn);
   }

   void _sortDate(){
     students.sort((a, b) {
       String timeStringA = a["timestamp"];
       String timeStringB = b["timestamp"];
       DateTime timeA = DateFormat("dd MMM yyyy, h:mm a").parse(timeStringA);
       DateTime timeB = DateFormat("dd MMM yyyy, h:mm a").parse(timeStringB);
       return timeB.compareTo(timeA);
     });
   }

   void _runFilter(String enteredKeyword){
     List<Map<String, dynamic>> results =[];
     if (enteredKeyword.isEmpty){
       results = students;
     }else{
       results = students
           .where((_students) =>
           _students["names"].toLowerCase().contains(enteredKeyword.toLowerCase()))
           .toList();
     }
     setState ((){
       _foundSearch = results;
     });
   }



 }

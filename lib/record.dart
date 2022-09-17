// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/src/widgets/container.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'main.dart';
// // import 'package:get/get.dart';

// // class Record extends StatefulWidget {
// //   const Record({super.key});

// //   @override
// //   State<Record> createState() => _RecordState();
// // }

// // class _RecordState extends State<Record> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         backgroundColor: Colors.white,
// //         body: Form(
// //          // key: _formKey,
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //          TextFormField(decoration: InputDecoration(labelText: 'email'),
// //            // The validator receives the text that the user has entered.
// //            validator: (value) {
// //              if (value == null || value.isEmpty) {
// //                return 'Please enter some text';
// //              }
// //              return null;
// //            },
// //          ),
// //          TextFormField(decoration: InputDecoration(labelText: 'name'),
// //            // The validator receives the text that the user has entered.
// //            validator: (value) {
// //              if (value == null || value.isEmpty) {
// //                return 'Please enter some text';
// //              }
// //              return null;
// //            },
// //          ),
// //          TextFormField(decoration: InputDecoration(labelText: 'age'),
// //            // The validator receives the text that the user has entered.
// //            validator: (value) {
// //              if (value == null || value.isEmpty) {
// //                return 'Please enter some text';
// //              }
// //              return null;
// //            },
// //          ),
// //          Padding(
// //            padding: const EdgeInsets.symmetric(vertical: 16.0),
// //            child: ElevatedButton(
// //              onPressed: () {
             
// //              },
// //              child: const Text('Submit'),
// //            ),
// //          ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class update extends StatefulWidget {
//   const update({super.key});

//   @override
//   State<update> createState() => _updateState();
// }

// class _updateState extends State<update> {final emailController = TextEditingController();
//   final nameController = TextEditingController();
//   final ageController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//        body: SafeArea(
//         child: Column(
//           children: [
//             // Text('ffff'),
//             TextField(
//               controller: emailController,  
//               decoration: InputDecoration(
//                   border: InputBorder.none,
//                   labelText: 'Enter Name',
//                   hintText: 'Enter Your Name'),
//             ),
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(
//                   border: InputBorder.none,
//                   labelText: 'Enter Name',
//                   hintText: 'Enter Your Name'),
//             ),
//             TextField(
//               controller: ageController,
//               decoration: InputDecoration(
//                   border: InputBorder.none,
//                   labelText: 'Enter Name',
//                   hintText: 'Enter Your Name'),
//             ),

//           //  InkWell(
//           //   onTap: (() {
//           //     postdata();
//           //    print(emailController.text);
//           //     print('object');
//           //   }),
//           //   child: const Text('Insert')), 
            
//             SizedBox(height: 10,),
//           ] 

//     )
//        ),
//     );
//   }
// }

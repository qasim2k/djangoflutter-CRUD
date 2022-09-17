import 'package:djangoflutter/newScreen.dart';
import 'package:djangoflutter/record.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // for using json.decode()
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const MyScreenAsim(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }



// class _HomePageState extends State<HomePage> {
  
//   final _formKey = GlobalKey<FormState>();

//   String? email;
//   String? name;
//   String? age;
//   final emailController = TextEditingController();
//   final nameController = TextEditingController();
//   final ageController = TextEditingController();

//   // The list that contains information about photos
//   List _loadedPhotos = [];

//   // The function that fetches data from the API
//   Future<void> _fetchData() async {
//     //const apiUrl = 'https://jsonplaceholder.typicode.com/photos';
//     const apiUrl = 'http://10.0.2.2:8000/api/persons/';

//     final response = await http.get(Uri.parse(apiUrl));
//     final data = json.decode(response.body);
//     print(data[0]['id']);
//     print(response.body);

//     setState(() {
//       _loadedPhotos = data;
//     });
//   }

//   Future<void> _deleteData(int id) async {
//     print("object");
//     //const apiUrl = 'https://jsonplaceholder.typicode.com/photos';
//     const apiUrl = 'http://10.0.2.2:8000/api/persons';

//     final response = await http.delete(Uri.parse("${apiUrl}/$id/"));
//     //final data = json.decode(response.body);
//     _fetchData();
//   }

//   postdata() async {
//     const apiUrl = 'http://10.0.2.2:8000/api/persons/';

//     final response = await http.post(Uri.parse(apiUrl),
//         body: {"name": "Asim", "address": "ABC123", "age": "ABC123"});
//     print(response.body);
//   }

//   //TextEditingController _textFieldController = TextEditingController();
//   @override
//   void dispose() {
//     emailController.dispose();
//     ageController.dispose();
//     nameController.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.grey,
//           title: InkWell(
//             onTap: (() {
//               Get.to(MyScreenAsim());
//             }),
//             child: const Text('my data')),
//         ),
//         body: SafeArea(
//           // ignore: avoid_unnecessary_containers
//           child: Padding(
//             padding: const EdgeInsets.only(top: 48.0),
//             child: ListView.builder(
//               itemCount: _loadedPhotos.length,
//               itemBuilder: (BuildContext nn, index) {
//                 return Container(
//                   child: ListTile(
//                     leading: Text("data"),
//                     title: Text("Name :" +
//                         " " +
//                         _loadedPhotos[index]['name'] +
//                         " Address :" +
//                         " " +
//                         _loadedPhotos[index]['address']),
//                     subtitle: Text(
//                         ' ID: ${_loadedPhotos[index]['id']}  Age: ${_loadedPhotos[index]['age']}'),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                             onPressed: () {
//                               Get.to(Record());
//                             },
//                             icon: const Icon(Icons.add)),
//                         IconButton(
//                             onPressed: () {
//                               //Get.to(Adduser());
//                             },
//                             icon: const Icon(Icons.edit)),
//                         IconButton(
//                             onPressed: () {
//                               _deleteData(_loadedPhotos[index]['id']);
//                             },
//                             icon: const Icon(Icons.delete)),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class MyScreenAsim extends StatefulWidget {
  const MyScreenAsim({super.key});

  @override
  State<MyScreenAsim> createState() => _MyScreenAsimState();
}



class _MyScreenAsimState extends State<MyScreenAsim> {
  @override
initState() {
  super.initState();
  _fetchData();
 // Add listeners to this class
}
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final ageController = TextEditingController();

    List _loadedPhotos = [];

  // The function that fetches data from the API
  Future<void> _fetchData() async {
    //const apiUrl = 'https://jsonplaceholder.typicode.com/photos';
    const apiUrl = 'http://10.0.2.2:8000/api/persons/';

    final response = await http.get(Uri.parse(apiUrl));
    final data = json.decode(response.body);
    print(data[0]['id']);
    print(response.body);

    setState(() {
      _loadedPhotos = data;
    });
  }

  Future<void> _deleteData(int id) async {
    print("object");
    //const apiUrl = 'https://jsonplaceholder.typicode.com/photos';
    const apiUrl = 'http://10.0.2.2:8000/api/persons';

    final response = await http.delete(Uri.parse("${apiUrl}/$id/"));
    //final data = json.decode(response.body);
    _fetchData();
  }

  postdata() async {
    const apiUrl = 'http://10.0.2.2:8000/api/persons/';

    final response = await http.post(Uri.parse(apiUrl),
        body: {"name": nameController.text, "address": emailController.text, "age": ageController.text});
    print(response.body);
    _fetchData();
  }
  Future<void> putdata(int id) async {
    const apiUrl = 'http://10.0.2.2:8000/api/persons';
   print(id);
    final response = await http.put(Uri.parse("${apiUrl}/$id/"),
     headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
        body:jsonEncode( <String,String> {"name": "qasim", "address": "df", "age": "67"}));
    print(response.body);
    _fetchData();
  }

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.grey,
          title: InkWell(
            onTap: (() {
              _fetchData();
              // Get.to(MyScreenAsim());
            }),
            child: const Text('my data')),
        ),
      body: SafeArea(
        child: Column(
          children: [
            // Text('ffff'),
            TextField(
              controller: emailController,  
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter Name',
                  hintText: 'Enter Your Name'),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter Name',
                  hintText: 'Enter Your Name'),
            ),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter Name',
                  hintText: 'Enter Your Name'),
            ),

           InkWell(
            onTap: (() {
              postdata();
             print(emailController.text);
              print('object');
            }),
            child: const Text('Insert')), 
            
            SizedBox(height: 10,),
            Expanded(
              // height: 400,
              // width: double.infinity,
              child: ListView.builder(
                itemCount: _loadedPhotos.length,
                itemBuilder: (BuildContext nn, index) {
                  return Container(
                    child: ListTile(
                      // leading: Text("data"),
                      title: Text("Name :" +
                          " " +
                          _loadedPhotos[index]['name'] +
                          " Address :" +
                          " " +
                          _loadedPhotos[index]['address']),
                      subtitle: Text(
                          ' ID: ${_loadedPhotos[index]['id']}  Age: ${_loadedPhotos[index]['age']}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () { postdata();
             print(emailController.text);
              print('object');
                                // Get.to(Record());
                              },
                              icon: const Icon(Icons.add)),
                          IconButton(
                              onPressed: () {
                                // Get.to(Adduser());
                                putdata(_loadedPhotos[index]['id']);
                               /// putdata(_loadedPhotos[index]['id'],nameController.text,ageController.text,emailController.text);
                              },
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                _deleteData(_loadedPhotos[index]['id']);
                              },
                              icon: const Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

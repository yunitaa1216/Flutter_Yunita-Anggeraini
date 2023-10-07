// import 'package:flutter/material.dart';
// import 'package:latihan/model.dart';
// import 'package:provider/provider.dart';
// import 'package:latihan/stores/contact.dart' as contact_store;
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String name = '';
//   String phoneNumber = '';
//   var nameController = TextEditingController();
//   var phoneNumberController = TextEditingController();
//   var formKey = GlobalKey<FormState>();

//   @override
//   void dispose() {
//     nameController.dispose();
//     phoneNumberController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     final contactProvider = Provider.of<contact_store.Contact>(context);
//     return Scaffold(
//       appBar: AppBar(title: const Text('Phone book app'),
//       ),
//       body: Form(key: formKey, child: Column(
//         children: [
//           TextField(
//             controller: nameController,
//             onChanged: (String value) {
//               name = value;
//             }
//           ),
//           TextField(
//             controller: phoneNumberController,
//             onChanged: (String value) {
//               phoneNumber = value;
//             }
//           ),
//           ElevatedButton(onPressed: (){
//             if (!formKey.currentState!.validate()) return;

//             formKey.currentState!.save();

//             contactProvider.add(GetContact(name: name, phoneNumber: phoneNumber,
//             ),
//             );
//           }, child: const Text('Add Number'),
//           ),
//           Expanded(child: 
//           ListView.builder(
//             itemCount: contactProvider.contacts.length,
//             itemBuilder: (context, index){
//             return ListTile(
//               title: Text(contactProvider.contacts[index].name),
//               subtitle: Text(contactProvider.contacts[index].phoneNumber),
//             );
//           }))
//         ],
//       ),),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dio = Provider.of<Dio>(context); // Ambil instance Dio dari Provider

    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Book App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              // Contoh penggunaan Dio untuk mengambil data dari API
              final response = await dio.get('https://api.example.com/data');
              print(response.data); // Cetak data dari respons
            } catch (e) {
              print('Error: $e');
            }
          },
          child: Text('Fetch Data from API'),
        ),
      ),
    );
  }
}
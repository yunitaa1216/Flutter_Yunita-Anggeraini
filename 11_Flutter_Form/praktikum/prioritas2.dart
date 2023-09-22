// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   TextEditingController nameController = TextEditingController(); // Controller untuk input nama
//   TextEditingController numberController = TextEditingController(); // Controller untuk input nomor

//   List<Map<String, String>> dataKontak = [
//     {'name': 'Name 1', 'phoneNumber': '123-456-7890'},
//     {'name': 'Name 2', 'phoneNumber': '987-654-3210'},
//     {'name': 'Name 3', 'phoneNumber': '555-555-5555'},
//   ];

//   ListTile buildListTile(String name, String phoneNumber) {
//     return ListTile(
//       title: Text(name),
//       subtitle: Text(phoneNumber),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFDCD0FF),
//         title: Center(
//           child: Text(
//             'Contacts',
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 16.0),
//             Icon(
//               Icons.contact_page_outlined,
//               size: 32.0,
//               color: Color.fromARGB(255, 200, 186, 249),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Create New Contacts',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               'To keep your contacts organized and easily accessible, please provide the following information to create a new contact. You can enter the person\'s name and phone number, and we\'ll take care of the rest. Creating a new contact has never been easier!',
//               style: TextStyle(
//                 color: Color(0xFF5F5E5E),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(16.0),
//                   color: Color(0xFFDCD0FF),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Name',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 4.0),
//                       TextField(
//                         controller: nameController,
//                         onChanged: (name) {
//                           print('$name');
//                         },
//                         decoration: InputDecoration(
//                           hintText: 'Insert your name',
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 16.0),
//                 Container(
//                   padding: EdgeInsets.all(16.0),
//                   color: Color(0xFFDCD0FF),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Nomor',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 2.0),
//                       TextField(
//                         controller: numberController,
//                         onChanged: (number) {
//                           print('$number');
//                         },
//                         decoration: InputDecoration(
//                           hintText: '+62 .....',
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 6.0),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       String name = nameController.text;
//                       String number = numberController.text;
//                       setState(() {
//                         dataKontak.add({'name': name, 'phoneNumber': number});
//                       });
//                       print(dataKontak);
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color.fromARGB(255, 91, 76, 138),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(50.0),
//                       ),
//                     ),
//                     child: Text(
//                       'Submit',
//                     ),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Text('List Contacts',
//                     style: TextStyle(
//         fontSize: 20.0,
//         fontWeight: FontWeight.bold,
//       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 200,
//                   child: ListView.builder(
//                     itemCount: dataKontak.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       final contact = dataKontak[index];
//                       final name = contact['name'];
//                       final phoneNumber = contact['phoneNumber'];
//                       return ListTile(
//                         leading: Container(
//                           width: 36.0,
//                           height: 36.0,
//                           decoration: BoxDecoration(
//                             color: Color(0xFFDCD0FF), // Warna latar belakang ungu
//                             shape: BoxShape.circle,
//                           ),
//                           child: Center(
//                             child: Text(
//                               'A',
//                               style: TextStyle(
//                                 color: Colors.black, // Warna huruf putih
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         title: Text(name ?? ''),
//                         subtitle: Text(phoneNumber ?? ''),
//                         trailing: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             IconButton(
//                               icon: Icon(Icons.edit),
//                               onPressed: (){
//                                 showDialog(
//                                   context: context, 
//                                   builder: (BuildContext context){
//                                     TextEditingController nameEditingController = TextEditingController(text: name);
//                                     TextEditingController numberEditingController = TextEditingController(text: phoneNumber);
//                                     return AlertDialog(
//           title: Text('Edit Contact'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//             controller: nameEditingController,
//             onChanged: (editedName) {
//               var editName = editedName;
//             },
//              decoration: InputDecoration(labelText: 'Name'),
//           ),
//           TextField(
//             controller: numberEditingController,
//             onChanged: (editedNumber) {
//               var editNumber = editedNumber;
//             },
//              decoration: InputDecoration(labelText: 'Nomor'),
//           ),
//                           ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Simpan'),
//               onPressed: () {
//                 String editedName = nameEditingController.text;
//                 var editedNumber = numberEditingController;
//                 setState(() {
//         dataKontak[index]['name'] = nameEditingController.text;
//                   dataKontak[index]['phoneNumber'] = numberEditingController.text;
//       });
//                 Navigator.of(context).pop(); // Tutup dialog
//               },
//             ),
//             TextButton(
//               child: Text('Batal'),
//               onPressed: () {
//                 Navigator.of(context).pop(); // Tutup dialog
//               },
//             ),
//           ],
//         );
//                                   });
//                               print('edit $name');
//                             }, 
//                             ),
//                             IconButton(
//             icon: Icon(Icons.delete),
//             onPressed: () {
//               showDialog(
//                 context: context, 
//                  builder: (BuildContext context) {
//                   return AlertDialog(
//                     title: Text('Konfirmasi Hapus'),
//                     content: Text('Yakin ingin menghapus kontak ini?'),
//                     actions: <Widget>[
//                       TextButton(
//                         onPressed: (){
//                           setState(() {
//                   dataKontak.removeAt(index);
//                 });
//                 Navigator.of(context).pop();
//                         }, 
//                         child: Text('Ya')),
//                         TextButton(
//                           child: Text('Batal'),
//               onPressed: () {
//                 Navigator.of(context).pop(); // Tutup dialog konfirmasi
//               },
//             ),
//                     ],
//                   );
//                 });
//             },
//           ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

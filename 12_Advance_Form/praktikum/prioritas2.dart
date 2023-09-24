// import 'package:flutter/material.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
// import 'package:intl/intl.dart';
// import 'package:file_picker/file_picker.dart';
// import 'dart:io';

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
//   DateTime _selectedDate = DateTime.now();
//   Color _selectedColor = Colors.black;
//   File? _selectedFile;
   
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2101),
//     );

//     if (picked != null) {
//       setState(() {
//         _selectedDate = picked;
//       });
//     }
//   }

  
//   void _selectColor(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       Color tempColor = _selectedColor; // Salin warna saat ini ke variabel sementara

//       return AlertDialog(
//         title: Text('Pick a Color'),
//         content: SingleChildScrollView(
//           child: ColorPicker(
//             pickerColor: tempColor,
//             onColorChanged: (color) {
//               setState(() {
//                 tempColor = color;
//               });
//             },
//             pickerAreaHeightPercent: 0.4,
//           ),
//         ),
//         actions: <Widget>[
//           TextButton(
//             child: Text('Done'),
//             onPressed: () {
//               Navigator.of(context).pop();
//               setState(() {
//                 _selectedColor = tempColor; // Setel warna yang dipilih
//               });
//             },
//           ),
//         ],
//       );
//     },
//   );
// }

// Future<void> _selectFile(BuildContext context) async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['jpg'], // Filter hanya file JPG
//     );

//     if (result != null) {
//     setState(() {
//       _selectedFile = File(result.files.single.path!);
//     });

//     // Tambahkan path file ke objek kontak terkait
//     if (_selectedFile != null) {
//       dataKontak.last['file'] = _selectedFile!.path;
//     }
//   } else {
//     print('File selection canceled.');
//   }
// }

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

//   bool isNameValid(String name) {
//   if (name.isEmpty) {
//     return false;
//   }

//   List<String> nameParts = name.split(' ');

//   if (nameParts.length < 2) {
//     return false;
//   }

//   for (String part in nameParts) {
//     if (!part.startsWith(RegExp(r'[A-Z]')) ||
//         part.contains(RegExp(r'[0-9!@#%^&*(),.?":{}|<>]'))) {
//       return false;
//     }
//   }

//   return true;
// }

// bool isPhoneNumberValid(String phoneNumber) {
//   if (phoneNumber.isEmpty) {
//     return false;
//   }

//   // Validasi panjang nomor telepon
//   if (phoneNumber.length < 8 || phoneNumber.length > 15) {
//     return false;
//   }

//   // Validasi nomor telepon harus terdiri dari angka saja
//   if (!phoneNumber.startsWith('0') || !phoneNumber.replaceAll(RegExp(r'[0-9]'), '').isEmpty) {
//     return false;
//   }

//   return true;
// }

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
//                 SizedBox(height: 10.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Date'),
//                         Text(
//                           DateFormat('dd-MM-yyyy').format(_selectedDate),
//                         ),
//                       ],
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         _selectDate(context);
//                       },
//                       child: Text("Select"),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 20.0),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Color'),
//                             Container(
//                               width: MediaQuery.of(context).size.width,
//                               height: 100.0,
//                               color: _selectedColor,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 16.0,),
//                         ElevatedButton(
//                           onPressed: () {
//                             _selectColor(context);
//                           },
//                           style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 2, 6, 9), // Ubah warna latar belakang tombol menjadi biru
//                           ),
//                           child: Text("Pick Color"),
//                         ),
//                         SizedBox(height: 16.0),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Pick File'),
//                           ],
//                         ),
//                         SizedBox(height: 16.0,),
//                         ElevatedButton(
//                           onPressed: () async {
//                             await _selectFile(context); // Panggil fungsi _selectFile saat tombol "Pick and open File" ditekan
//                           },
//                           style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 2, 6, 9),
//                           ),
//                           child: Text("Pick and open File"),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 6.0),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       String name = nameController.text;
//                       String number = numberController.text;
//                       if (name.isNotEmpty && number.isNotEmpty) {
//                         if (isNameValid(name)) {
//                           if (isPhoneNumberValid(number)) {
//                             setState(() {
//                               dataKontak.add({
//                                   'name': name,
//                                   'phoneNumber': number,
//                                   'date': DateFormat('dd-MM-yyyy').format(_selectedDate),
//                                   'color': _selectedColor.toString(),
//                                   // 'file': _selectedFile != null ? _selectedFile!.path : '',
//                                 });
//                             });
//                             print(dataKontak);
//                           } else {
//                             showDialog(
//                               context: context,
//                               builder: (BuildContext context) {
//                                 return AlertDialog(
//                                   title: Text('Error'),
//                                   content: Text(
//                                     'Nomor telepon tidak valid. Pastikan nomor telepon terdiri dari angka saja, panjang minimal 8 digit, maksimal 15 digit, dan dimulai dengan angka 0.',
//                                   ),
//                                   actions: <Widget>[
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                       child: Text('Ok'),
//                                     ),
//                                   ],
//                                 );
//                               },
//                             );
//                           }
//                           } else {
//                             showDialog(
//                               context: context,
//                               builder: (BuildContext context) {
//                                 return AlertDialog(
//                                   title: Text('Error'),
//                                   content: Text(
//                                     'Nama tidak valid. Pastikan nama terdiri dari minimal 2 kata, setiap kata dimulai dengan huruf kapital, dan tidak mengandung angka atau karakter khusus.',
//                                   ),
//                                   actions: <Widget>[
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                       child: Text('Ok'),
//                                     ),
//                                   ],
//                                 );
//                                 },
//                               );
//                             }
//                           } else {
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 title: Text('Error'),
//                                 content: Text('Nama dan Nomor tidak boleh kosong.'),
//                                 actions: <Widget>[
//                                   TextButton(
//                                     onPressed: () {
//                                       Navigator.of(context).pop();
//                                     },
//                                     child: Text('Ok'),
//                                   ),
//                                 ],
//                              ); 
//                             },
//                           );
//                           }
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
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                     ),
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
//                       final date = contact['date'];
//                       final filePath = contact['file'];
//                       final color = contact['color'];

//                       print('Name: $name');
//                       print('Phone Number: $phoneNumber');
//                       print('Date: $date');
//                       print('Color: $color');
      
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
//                         subtitle: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(phoneNumber ?? ''),
//                             Text('Date: $date'), // Tampilkan tanggal
//                             Text('Color : $color'),
//                           ],
//                         ),
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
//                                       title: Text('Edit Contact'),
//                                       content: Column(
//                                         mainAxisSize: MainAxisSize.min,
//                                         children: [
//                                           TextField(
//                                             controller: nameEditingController,
//                                             onChanged: (editedName) {
//                                               var editName = editedName;
//                                             },
//                                             decoration: InputDecoration(labelText: 'Name'),
//                                           ),
//                                           TextField(
//                                             controller: numberEditingController,
//                                             onChanged: (editedNumber) {
//                                               var editNumber = editedNumber;
//                                             },
//                                             decoration: InputDecoration(labelText: 'Nomor'),
//                                           ),
//                                         ],
//                                       ),
//                                       actions: <Widget>[
//                                         TextButton(
//                                           child: Text('Simpan'),
//                                           onPressed: () {
//                                             String editedName = nameEditingController.text;
//                                             var editedNumber = numberEditingController;
//                                             setState(() {
//                                               dataKontak[index]['name'] = nameEditingController.text;
//                                               dataKontak[index]['phoneNumber'] = numberEditingController.text;
//                                             });
//                                             Navigator.of(context).pop();
//                                           },
//                                           ),
//                                           TextButton(
//                                             child: Text('Batal'),
//                                             onPressed: () {
//                                               Navigator.of(context).pop(); // Tutup dialog
//                                             },
//                                           ),
//                                         ],
//                                       );
//                                   });
//                                   print('edit $name');
//                               }, 
//                             ),
//                             IconButton(
//                               icon: Icon(Icons.delete),
//                               onPressed: () {
//                                 showDialog(
//                                   context: context, 
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       title: Text('Konfirmasi Hapus'),
//                                       content: Text('Yakin ingin menghapus kontak ini?'),
//                                       actions: <Widget>[
//                                         TextButton(
//                                           onPressed: (){
//                                             setState(() {
//                                               dataKontak.removeAt(index);
//                                             });
//                                             Navigator.of(context).pop();
//                                           }, 
//                                           child: Text('Ya')),
//                                           TextButton(
//                                             child: Text('Batal'),
//                                             onPressed: () {
//                                               Navigator.of(context).pop(); // Tutup dialog konfirmasi
//                                             },
//                                           ),
//                                         ],
//                                       );
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//         ),
//       ),
//     );
//   }
// } 
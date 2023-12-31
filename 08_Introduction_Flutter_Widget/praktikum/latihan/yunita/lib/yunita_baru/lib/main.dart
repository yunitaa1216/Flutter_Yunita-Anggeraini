import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Material App'),
        ),
        body:const Center(
          child: Text('This is material App'),
        ),
        drawer: Theme(
          data: ThemeData.dark(), 
          child: Drawer(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Home'),
                ),
                ListTile(
                  title: Text('Setting'),
                ),
              ],
                ),
                ),
            ),
                bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
                ));
          }
        }



        //     children: const [
        //       const DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: const Color.fromARGB(255, 121, 175, 220), // Warna latar belakang header
        //         ),
        //         child: Text('Home'),
        //       ),
        //       const ListTile(
        //         title: Text('Setting'),
        //         // leading: FlutterLogo(),
        //       ),
        //     ],
//           ),
//         ),
//         bottomNavigationBar: NavigationBar(
//           // indicatorColor: Colors.green,
//           destinations: const <Widget>[
//             NavigationDestination(
//               icon: Icon(Icons.home), label: 'Home'),
//             NavigationDestination(
//               icon: Icon(Icons.settings), label: 'Setting'),
//           ],
//         ),
//         ));
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Material',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Material App'),
//       ),
//       body: Center(
//         child: Text('this is material App'),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text('Halo Alterra'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Nama saya adalah Yunita Anggeraini',
//             ),
//           ]),
//       ),
//     );
//   }
// }

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //         useMaterial3: true,
// //       ),
// //       home: const MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatelessWidget {
// //   const MyHomePage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //         title: Text('Halo Alterra'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text(r
// //               'Nama saya adalah Yunita Anggeraini',
// //             ),
// //           ]),
// //       ),
// //     );
// //   }
// // }
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// // }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //         useMaterial3: true,
// //       ),
// //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// //     );
// //   }

// // class MyHomePage extends StatelessWidget {
// //   const MyHomePage({super.key, required this.title});
// //    final String title;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text(
// //               'You have pushed the button this many times:',
// //             ),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const HelloWord();
//   }
// }

// class HelloWord extends StatefulWidget {
//   const HelloWord({super.key});

//   @override
//   State<HelloWord> createState() => _HelloWordState();
// }

// class _HelloWordState extends State<HelloWord> {
//   // var inputController = TextEditingController();
//   var inputController = TextEditingController(text: '');
//   var radioValue = '';
//   bool checkValue = false;
//   var dropDownValue = 0;
//   DateTime _dueDate = DateTime.now();
//   final currentDate = DateTime.now();
//   // DateTime selectedDate = DateTime.now(); // Untuk menyimpan tanggal yang dipilih

  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime picked = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2101),
  //   );
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //   }
  // }
//   List data_kontak = [
//     {
//       "title": "Mahasiswa", 
//       "jenis_kelamin": "Laki-laki"
//     },
//     {
//       "title": "Mahasiswa", 
//       "jenis_kelamin": "perempuan"
//     },
//     {
//       "title": "Mahasiswa", 
//       "jenis_kelamin": "Laki-laki"
//     },
//     {
//       "title": "Mahasiswa", 
//       "jenis_kelamin": "Perempuan"
//     },
//   ];

//   Future<void> _selectDate(BuildContext context) async {
//   final DateTime? picked = await showDatePicker(
//     context: context,
//     initialDate: _dueDate,
//     firstDate: DateTime(2000),
//     lastDate: DateTime(2101),
//   );

//   if (picked != null) {
//     setState(() {
//       _dueDate = picked;
//     });
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Yunita App'),
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             color: Color.fromARGB(255, 88, 88, 96),
//             margin: EdgeInsets.only(top: 30, left: 20, right: 20),
//             child: Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [],
//                   ),
//                 // children: [
//                 //   Row(
//                 //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //     children: [
//                 //       Text('Yunita'),
//                 //       Text('Yunita')
//                 //     ],
//                 //   ),
//                   SizedBox(
//                     height: 60,
//                   ),
//                   Text('List Peserta Flutter Kelas D'),
//                   TextField(
//                     controller: inputController,
//                     onChanged: (inputController) {
//                       print('$inputController');
//                     },
//                   ),
//                   Row(
//                     children: [
//                       Radio(
//                           value: 'Laki-laki',
//                           groupValue: radioValue,
//                           onChanged: (String? value) {
//                             setState(() {
//                               radioValue = value ?? '';
//                               print('Nilai  dari radio value =  $radioValue');
//                             });
//                           }),
//                       Text('Laki - laki'),
//                     ],
//                   ),

//                   Row(
//                     children: [
//                       Radio(
//                           value: 'Perempuan',
//                           groupValue: radioValue,
//                           onChanged: (String? value) {
//                             setState(() {
//                               radioValue = value ?? '';
//                               print('Nilai  dari radio value =  $radioValue');
//                             });
//                           }),
//                       Text('Perempuan'),
//                     ],
//                   ),
//                   Divider(),
//                  Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Date',
//           style: TextStyle(fontSize: 16),
//         ),
//         Text(
//           "${DateFormat('dd/MM/yyyy').format(currentDate)}",
//           style: TextStyle(fontSize: 16),
//         ),
//       ],
//     ),
//     TextButton(
//       onPressed: () {
//         _selectDate(context);
//       },
//       child: Text("Select"),
//     ),
//   ],
// ),

//                   ElevatedButton(
//                     child: Text('Submit'),
//                     onPressed: () {
//                       setState(() {
//                         data_kontak.add({
//                           "title": "${inputController.text}",
//                           "jenis_kelamin": "$radioValue",
//                           "tanggal": "${DateFormat('dd/MM/yyyy').format(_dueDate)}",
//                           // "checkbox": checkValue,
//                           // "dropdown": dropDownValue,
//                         });
//                       });

//                       print('data_kontak : $data_kontak');
//                     },
//                   ),
//                   SizedBox(
//                       height: 200,
//                       child: ListView.builder(
//                           itemCount: data_kontak.length,
//                           itemBuilder: (BuildContext context, int index) {
//                             return ListTile(
//                               leading: FlutterLogo(),
//                               title: Text('${data_kontak[index]["title"]}'),
//                               subtitle:
//                                   Text('${data_kontak[index]["jenis_kelamin"]}'),
//                             trailing: Wrap(
//                             children: [
//                               IconButton(onPressed: (){
//                                 // print('delete $data_kontak');
//                                 setState(() {
//                                   data_kontak.removeAt(index);
//                                 });
//                               }, 
//                               icon: Icon(Icons.delete)),
//                               IconButton(
//   onPressed: () {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         TextEditingController textEditingController = TextEditingController(text: data_kontak[index]["title"]);

//         return AlertDialog(
//           title: Text('Konfirmasi Edit'),
//           content: Column(
//             children: [
//               Text('nama'),
//               TextField(
//                 controller: textEditingController,
//                 decoration: InputDecoration(
//                   hintText: 'Masukkan nama',
//                 ),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context, 'Batal');
//               },
//               child: Text('Batal'),
//             ),
//             TextButton(
//               onPressed: () {
//                 final editText = textEditingController.text;
//                 setState(() {
//                   data_kontak[index]["title"] = editText;
//                 });
//                 Navigator.pop(context);
//               },
//               child: Text('Edit'),
//             ),
//           ],
//         );
//       },
//     );
//   },
//   icon: Icon(Icons.edit),
// ),
//                             ],
//                             ),
//                             );
//                           })
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
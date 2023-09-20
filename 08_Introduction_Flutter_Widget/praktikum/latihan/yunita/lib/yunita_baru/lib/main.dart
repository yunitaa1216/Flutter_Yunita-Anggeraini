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
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
// }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});
//    final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var inputController = TextEditingController();
  var inputController = TextEditingController(text: '');
  var radioValue = '';
  bool checkValue = false;
  var dropDownValue = 0;
  List data_kontak = [
    {
      "title": "Mahasiswa", 
      "jenis_kelamin": "Laki-laki"
    },
    {
      "title": "Mahasiswa", 
      "jenis_kelamin": "perempuan"
    },
    {
      "title": "Mahasiswa", 
      "jenis_kelamin": "Laki-laki"
    },
    {
      "title": "Mahasiswa", 
      "jenis_kelamin": "Perempuan"
    },
  ]; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yunita App'),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 149, 149, 189),
            margin: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Yunita'),
                      Text('Yunita')
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text('List Peserta Flutter Kelas D'),
                  TextField(
                    controller: inputController,
                    onChanged: (inputController) {
                      print('$inputController');
                    },
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 'Laki-laki',
                          groupValue: radioValue,
                          onChanged: (String? value) {
                            setState(() {
                              radioValue = value ?? '';
                              print('Nilai  dari radio value =  $radioValue');
                            });
                          }),
                      Text('Laki - laki'),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          value: 'Perempuan',
                          groupValue: radioValue,
                          onChanged: (String? value) {
                            setState(() {
                              radioValue = value ?? '';
                              print('Nilai  dari radio value =  $radioValue');
                            });
                          }),
                      Text('Perempuan'),
                    ],
                  ),
                  //checkbox simple
                  // Divider(),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //         value: checkValue,
                  //         checkColor: Colors.green,
                  //         onChanged: (bool? value) {
                  //           setState(() {
                  //             checkValue = value!;
                  //             print('$checkValue');
                  //           });
                  //         }),
                  //     Text('C++'),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //         value: checkValue,
                  //         checkColor: Colors.green,
                  //         onChanged: (bool? value) {
                  //           setState(() {
                  //             checkValue = value!;
                  //             print('$checkValue');
                  //           });
                  //         }),
                  //     Text('Dart'),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //         value: checkValue,
                  //         checkColor: Colors.green,
                  //         onChanged: (bool? value) {
                  //           setState(() {
                  //             checkValue = value!;
                  //             print('$checkValue');
                  //           });
                  //         }),
                  //     Text('PHP'),
                  //   ],
                  // ),
                  // Divider(),
                  // DropdownButton(
                  //     value: dropDownValue,
                  //     items: [
                  //       DropdownMenuItem(
                  //         value: 0,
                  //         child: Text('pilihan 1'),
                  //       ),
                  //       DropdownMenuItem(value: 1, child: Text('pilihan 2')),
                  //       DropdownMenuItem(value: 2, child: Text('pilihan 3'))
                  //     ],
                  //     onChanged: (int? value) {
                  //       setState(() {
                  //         dropDownValue = value ?? 0;
                  //         print('$dropDownValue');
                  //       });
                  //     }),
                  ElevatedButton(
                    child: Text('Submit'),
                    onPressed: () {
                      setState(() {
                        data_kontak.add({
                          "title": "${inputController.text}",
                          "jenis_kelamin": "$radioValue",
                          // "checkbox": checkValue,
                          // "dropdown": dropDownValue,
                        });
                      });

                      print('data_kontak : $data_kontak');
                    },
                  ),
                  SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: data_kontak.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: FlutterLogo(),
                              title: Text('${data_kontak[index]["title"]}'),
                              subtitle:
                                  Text('${data_kontak[index]["jenis_kelamin"]}'),
                            trailing: Wrap(
                            children: [
                              IconButton(onPressed: (){
                                // print('delete $data_kontak');
                                setState(() {
                                  data_kontak.removeAt(index);
                                });
                              }, 
                              icon: Icon(Icons.delete)),
                              IconButton(
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController textEditingController = TextEditingController(text: data_kontak[index]["title"]);

        return AlertDialog(
          title: Text('Konfirmasi Edit'),
          content: Column(
            children: [
              Text('nama'),
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Masukkan nama',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Batal');
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                final editText = textEditingController.text;
                setState(() {
                  data_kontak[index]["title"] = editText;
                });
                Navigator.pop(context);
              },
              child: Text('Edit'),
            ),
          ],
        );
      },
    );
  },
  icon: Icon(Icons.edit),
),
                            ],
                            ),
                            );
                          })
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
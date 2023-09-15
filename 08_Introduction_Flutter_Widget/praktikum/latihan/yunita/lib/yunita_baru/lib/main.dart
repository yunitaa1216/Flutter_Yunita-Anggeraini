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
  var inputController = TextEditingController();
  var radioValue = '';
  bool checkValue = false;
  var dropDownValue = 0;
  List data_kontak = [
    {"title": "Kepala SUku", "jenis_kelamin": "Laki-laki"},
    {"title": "Guru Bahasa Cinta", "jenis_kelamin": "perempuan"},
    {"title": "Bendahara Sekolah", "jenis_kelamin": "Laki-laki"},
    {"title": "Guru Matematika", "jenis_kelamin": "Perempuan"},
    {"title": "Guru Biologi", "jenis_kelamin": "Laki-laki"}
  ]; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yunita App'),
        ),
        body: SingleChildScrollView( // Wrap your content in a SingleChildScrollView
          child: Container(
            color: Color.fromARGB(255, 150, 74, 74),
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
                  Divider(),
                  Row(
                    children: [
                      Checkbox(
                          value: checkValue,
                          checkColor: Colors.green,
                          onChanged: (bool? value) {
                            setState(() {
                              checkValue = value!;
                              print('$checkValue');
                            });
                          }),
                      Text('C++'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: checkValue,
                          checkColor: Colors.green,
                          onChanged: (bool? value) {
                            setState(() {
                              checkValue = value!;
                              print('$checkValue');
                            });
                          }),
                      Text('Dart'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: checkValue,
                          checkColor: Colors.green,
                          onChanged: (bool? value) {
                            setState(() {
                              checkValue = value!;
                              print('$checkValue');
                            });
                          }),
                      Text('PHP'),
                    ],
                  ),
                  Divider(),
                  DropdownButton(
                      value: dropDownValue,
                      items: [
                        DropdownMenuItem(
                          value: 0,
                          child: Text('pilihan 1'),
                        ),
                        DropdownMenuItem(value: 1, child: Text('pilihan 2')),
                        DropdownMenuItem(value: 2, child: Text('pilihan 3'))
                      ],
                      onChanged: (int? value) {
                        setState(() {
                          dropDownValue = value ?? 0;
                          print('$dropDownValue');
                        });
                      }),
                  ElevatedButton(
                    child: Text('Submit'),
                    onPressed: () {
                      setState(() {
                        data_kontak.add({
                          "title": "${inputController.text}",
                          "jenis_kelamin": "$radioValue",
                          "checkbox": checkValue,
                          "dropdown": dropDownValue,
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
                            trailing: Column(
                            children: [
                              Text('Checkbox: ${data_kontak[index]["checkbox"]}'),
                              Text('Dropdown: ${data_kontak[index]["dropdown"]}'),
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
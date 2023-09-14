import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
        child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


// Tess
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title:const Text('Yunita App'),
//         ),
//         body:const Center(
//           child: Text('Material'),
//         ),
//         drawer: Drawer(
//           child: ListView(
//             children: const [
//               const DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 121, 175, 220), // Warna latar belakang header
//                 ),
//                 child: Text('Drawer Widget'),
//               ),
//               const ListTile(
//                 title: Text('Item 1'),
//                 leading: FlutterLogo(),
//               ),
//               const ListTile(
//                 title: Text('Item 2'),
//                 leading: FlutterLogo(),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: NavigationBar(
//           indicatorColor: Colors.green,
//           destinations: const <Widget>[
//             NavigationDestination(
//               icon: Icon(Icons.abc), label: 'verified user'),
//             NavigationDestination(
//               icon: Icon(Icons.abc), label: 'verified user'),
//           ],
//         ),
//         ));
//   }
// }

// import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       home: CupertinoPageScaffold(
//         navigationBar: CupertinoNavigationBar(
//           middle: Text('Cupertino'),
//         ),
//         child: Center(
//             child: Text('Flutter Cupertino'),
//         ),
//       ),
//     );
//   }
// }

//       home: AppBar(
//         title: const Text('Hai nama ku Yunita'),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     var inputController = TextEditingController();
//     var radioValue = '';
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title:const Text('Yunita App'),
//         ),
//         body:Container(
//           color: Color.fromARGB(255, 150, 74, 74),
//           margin: EdgeInsets.only(top: 30, left: 20, right: 20),
//           child: Center(
//             child: Column(children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Yunita'),
//                   Text('Yunita')
//                 ],
//               ),
//               SizedBox(
//                 height: 60,
//               ),
//               Text('List Peserta Flutter Kelas D'),
//               TextField(
//                 onChanged: (inputController) {
//                   if(inputController == 'yunita'){
//                     print('mentee');
//                   } else {
//                     print('mentor');
//                   }
//                   print('$inputController');
//                 },
//                 controller: inputController,
//               ),
//               Radio(value: 'laki-lali', groupValue: radioValue, onChanged: (String? value){
//                 setState((){
//                   radioValue = value ?? '';
//                   print('radio button on changed');
//                 });
//               })
//               Expanded(
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // Jumlah kolom dalam GridView
//                     crossAxisSpacing: 8.0, // Spasi antara kolom
//                     mainAxisSpacing: 8.0, // Spasi antara baris
//                   ),
//                   itemCount: 100, // Ganti dengan jumlah data yang sesuai
//                   itemBuilder: (BuildContext context, int index) {
//                     return Text('Nama Peserta $index');
//                   },
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),

              // Expanded(child: ListView(
              //   padding: const EdgeInsets.all(8),
              //   children: [
              //     Text('ADE ALI INDRA'),
              //     Text('ALWIN ZUHRIANDI MANALU'),
              //     Text('ANISA YUNIARTI'),
              //     Text('Bima Pangestu Nugraha'),
              //     Text('Dastin Pranata Yuda'),
              //     Text('David Christian Hui'),
              //     Text('David Liem'),
              //     Text('Delia Sepiana'),
              //     Text('FAJRUL KAMAL'),
              //     Text('GHAZI FARHANU DISASMORO'),
              //     Text('HIDAYAH DANIAWATI'),
              //     Text('JUHARMANSAH'),
              //     Text('KATARINA ANDREA LAURENTIA'),
              //     Text('MUHAMMAD AFRIZAL RASYID'),
              //     Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
              //     Text('MUHAMMAD ILHAM'),
              //     Text('MUHAMMAD NGURAH ARYA PRATAMA'),
              //     Text('MUSTIKA CHAIRANI'),
              //     Text('NURMALASARI'),
              //     Text('Phrimus Nufeto'),
              //     Text('PUTRI DIANA HAFSYAWATI'),
              //     Text('RACHAEL NATHASYA'),
              //     Text('RAFI TAUFIQURAHMAN'),
              //     Text('RAMADHAN PUTRA NUGRAHA'),
              //     Text('YUNITA ANGGERAINI'),
              //     Text('ADE ALI INDRA'),
              //     Text('ALWIN ZUHRIANDI MANALU'),
              //     Text('ANISA YUNIARTI'),
              //     Text('Bima Pangestu Nugraha'),
              //     Text('Dastin Pranata Yuda'),
              //     Text('David Christian Hui'),
              //     Text('David Liem'),
              //     Text('Delia Sepiana'),
              //     Text('FAJRUL KAMAL'),
              //     Text('GHAZI FARHANU DISASMORO'),
              //     Text('HIDAYAH DANIAWATI'),
              //     Text('JUHARMANSAH'),
              //     Text('KATARINA ANDREA LAURENTIA'),
              //     Text('MUHAMMAD AFRIZAL RASYID'),
              //     Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
              //     Text('MUHAMMAD ILHAM'),
              //     Text('MUHAMMAD NGURAH ARYA PRATAMA'),
              //     Text('MUSTIKA CHAIRANI'),
              //     Text('NURMALASARI'),
              //     Text('Phrimus Nufeto'),
              //     Text('PUTRI DIANA HAFSYAWATI'),
              //     Text('RACHAEL NATHASYA'),
              //     Text('RAFI TAUFIQURAHMAN'),
              //     Text('RAMADHAN PUTRA NUGRAHA'),
              //     Text('YUNITA ANGGERAINI'),
              //     Text('ADE ALI INDRA'),
              //     Text('ALWIN ZUHRIANDI MANALU'),
              //     Text('ANISA YUNIARTI'),
              //     Text('Bima Pangestu Nugraha'),
              //     Text('Dastin Pranata Yuda'),
              //     Text('David Christian Hui'),
              //     Text('David Liem'),
              //     Text('Delia Sepiana'),
              //     Text('FAJRUL KAMAL'),
              //     Text('GHAZI FARHANU DISASMORO'),
              //     Text('HIDAYAH DANIAWATI'),
              //     Text('JUHARMANSAH'),
              //     Text('KATARINA ANDREA LAURENTIA'),
              //     Text('MUHAMMAD AFRIZAL RASYID'),
              //     Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
              //     Text('MUHAMMAD ILHAM'),
              //     Text('MUHAMMAD NGURAH ARYA PRATAMA'),
              //     Text('MUSTIKA CHAIRANI'),
              //     Text('NURMALASARI'),
              //     Text('Phrimus Nufeto'),
              //     Text('PUTRI DIANA HAFSYAWATI'),
              //     Text('RACHAEL NATHASYA'),
              //     Text('RAFI TAUFIQURAHMAN'),
              //     Text('RAMADHAN PUTRA NUGRAHA'),
              //     Text('YUNITA ANGGERAINI'),
              //     Text('ADE ALI INDRA'),
              //     Text('ALWIN ZUHRIANDI MANALU'),
              //     Text('ANISA YUNIARTI'),
              //     Text('Bima Pangestu Nugraha'),
              //     Text('Dastin Pranata Yuda'),
              //     Text('David Christian Hui'),
              //     Text('David Liem'),
              //     Text('Delia Sepiana'),
              //     Text('FAJRUL KAMAL'),
              //     Text('GHAZI FARHANU DISASMORO'),
              //     Text('HIDAYAH DANIAWATI'),
              //     Text('JUHARMANSAH'),
              //     Text('KATARINA ANDREA LAURENTIA'),
              //     Text('MUHAMMAD AFRIZAL RASYID'),
              //     Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
              //     Text('MUHAMMAD ILHAM'),
              //     Text('MUHAMMAD NGURAH ARYA PRATAMA'),
              //     Text('MUSTIKA CHAIRANI'),
              //     Text('NURMALASARI'),
              //     Text('Phrimus Nufeto'),
              //     Text('PUTRI DIANA HAFSYAWATI'),
              //     Text('RACHAEL NATHASYA'),
              //     Text('RAFI TAUFIQURAHMAN'),
              //     Text('RAMADHAN PUTRA NUGRAHA'),
              //     Text('YUNITA ANGGERAINI'),
              //   ],
              // ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
//             ]),
//           ),
//         )
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import the Provider package
import 'contact.dart';
import 'galeri.dart';
import 'home_page.dart';

// import 'ui/screen/galeri.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(), // Create an instance of your AppState
      child: const MyApp(),
    ),
  );
}
class AppState extends ChangeNotifier {
  bool someFlag = false; // Replace with your application state variables

  void updateFlag(bool newValue) {
    someFlag = newValue;
    notifyListeners(); // Notify listeners of the change
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context); // Access the app state
    appState.updateFlag(true); // Update the state
    bool flagValue = appState.someFlag; // Access the state
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/galeri': (context) => GaleriPage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}
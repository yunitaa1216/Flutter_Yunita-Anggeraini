import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_ui_testing/contact.dart'; // Sesuaikan dengan lokasi berkas ContactPage

void main() {
  group('halaman contact', () {
    testWidgets('Widget Rendering Test', (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(home: ContactPage()));

      expect(find.text("Contacts"), findsOneWidget);

      expect(find.byIcon(Icons.contact_page_outlined), findsOneWidget);

      expect(find.text("Create New Contacts"), findsOneWidget);

      expect(find.byType(TextField), findsNWidgets(2));

      expect(find.text("Submit"), findsOneWidget);
    });
      expect(find.text('Name'), findsOneWidget);
      expect(find.text('Nomor'), findsOneWidget);
      expect(find.text('Date'), findsOneWidget);
      expect(find.text('Color'), findsOneWidget);
      expect(find.text('Pick File'), findsOneWidget);
  });
}

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:tugas_ui_testing/contact.dart';

// void main() {
//   group('Contact Page', () {
//     testWidgets('Widget Rendering Test', (WidgetTester tester) async {
//       await tester.pumpWidget(MaterialApp(home: ContactPage()));

//       // Mengecek apakah widget utama telah dirender dengan benar
//       expect(find.text('Contacts'), findsOneWidget);
//       expect(find.text('Create New Contacts'), findsOneWidget);
//       expect(find.text('Name'), findsOneWidget);
//       expect(find.text('Nomor'), findsOneWidget);
//       expect(find.text('Date'), findsOneWidget);
//       expect(find.text('Color'), findsOneWidget);
//       expect(find.text('Pick File'), findsOneWidget);

//       // Mengecek tombol 'Submit'
//       final submitButton = find.text('Submit');
//       expect(submitButton, findsOneWidget);

//       // Mengecek ListView yang menampilkan daftar kontak
//       final listTile = find.byType(ListTile);
//       expect(listTile, findsWidgets);

//       // Menjalankan interaksi pengguna pada halaman
//       await tester.tap(submitButton);
//       await tester.pump();

//       // Mengecek pesan kesalahan jika nama dan nomor tidak diisi
//       expect(find.text('Nama dan Nomor tidak boleh kosong.'), findsOneWidget);

//       // Memasukkan nilai ke dalam field nama dan nomor
//       await tester.enterText(find.byType(TextField).at(0), 'John Doe');
//       await tester.enterText(find.byType(TextField).at(1), '1234567890');

//       // Menekan tombol 'Submit' kembali
//       await tester.tap(submitButton);
//       await tester.pump();

//       // Mengecek apakah kontak baru ditambahkan
//       expect(find.text('John Doe'), findsOneWidget);
//       expect(find.text('1234567890'), findsOneWidget);
//     });
//   });
// }

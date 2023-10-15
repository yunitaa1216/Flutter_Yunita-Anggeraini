import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_ui_testing/login.dart';
void main() {
  testWidgets('Login Page UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    final usernameField = find.byKey(ValueKey('usernameField'));
    final passwordField = find.byKey(ValueKey('passwordField'));

    await tester.enterText(usernameField, 'admin');
    await tester.enterText(passwordField, 'admin');

    final loginButton = find.byKey(ValueKey('loginButton'));
    await tester.tap(loginButton);
    await tester.pump();
  });
}

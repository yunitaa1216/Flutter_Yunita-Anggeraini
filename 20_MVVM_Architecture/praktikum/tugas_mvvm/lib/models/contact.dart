// model/contact.dart
class Contact {
  final String name;
  final String phoneNumber;
  final DateTime date;
  final String color;
  final String? file;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.date,
    required this.color,
    this.file,
  });
}
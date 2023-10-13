import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ContactViewModel {
  // Function to validate a name
  bool isNameValid(String name) {
    if (name.isEmpty) {
      return false;
    }

    List<String> nameParts = name.split(' ');

    if (nameParts.length < 2) {
      return false;
    }

    for (String part in nameParts) {
      if (!part.startsWith(RegExp(r'[A-Z]')) ||
          part.contains(RegExp(r'[0-9!@#%^&*(),.?":{}|<>]'))) {
        return false;
      }
    }

    return true;
  }

  // Function to validate a phone number
  bool isPhoneNumberValid(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return false;
    }

    // Validation for phone number length and format
    if (phoneNumber.length < 8 || phoneNumber.length > 15) {
      return false;
    }

    if (!phoneNumber.startsWith('0') ||
        !phoneNumber.replaceAll(RegExp(r'[0-9]'), '').isEmpty) {
      return false;
    }

    return true;
  }

  // Example function to add a contact
  void addContact(
    BuildContext context,
    String name,
    String phoneNumber,
    DateTime selectedDate,
    Color selectedColor,
    // File? selectedFile,
    List<Map<String, String>> dataKontak,
  ) {
    if (name.isNotEmpty && phoneNumber.isNotEmpty) {
      if (isNameValid(name)) {
        if (isPhoneNumberValid(phoneNumber)) {
          dataKontak.add({
            'name': name,
            'phoneNumber': phoneNumber,
            'date': DateFormat('dd-MM-yyyy').format(selectedDate),
            'color': selectedColor.toString(),
            // 'file': selectedFile != null ? selectedFile.path : '',
          });
        } else {
          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Error'),
                                  content: Text(
                                    'Nomor telepon tidak valid. Pastikan nomor telepon terdiri dari angka saja, panjang minimal 8 digit, maksimal 15 digit, dan dimulai dengan angka 0.',
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
      } else {
        showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Error'),
                                  content: Text(
                                    'Nama tidak valid. Pastikan nama terdiri dari minimal 2 kata, setiap kata dimulai dengan huruf kapital, dan tidak mengandung angka atau karakter khusus.',
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                                },
                              );
                            }
    } else {
      showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Error'),
                                content: Text('Nama dan Nomor tidak boleh kosong.'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Ok'),
                                  ),
                                ],
                             ); 
                            },
                          );
                          }
  }

  // Add more viewmodel logic as needed
}

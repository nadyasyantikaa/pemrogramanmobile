import 'package:nullable/nullable.dart' as nullable;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${nullable.calculate()}!');
  print("Masukkan nama anda:");
  String? nama = stdin.readLineSync();
  print("Nama anda adalah : ${nama == null || nama.isEmpty ? 'Tidak diketahui' : nama}");
}

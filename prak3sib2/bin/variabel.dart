import 'package:prak3sib2/prak3sib2.dart' as prak3sib2;

late int a;
void main(List<String> arguments) {
  int a = 10;
  double b = 3.14;
  String c = 'Hello, Dart!';
  bool d = true;
  print(a);
  print(b);
  print(c);
  print(d);
  String e = '12';
  int f = a + int.parse(e);
  print(f);
  List<String> names = ['Nadya', 'Syantika', 'Naraya'];
  List<int> numbers = [1, 2, 3, 4, 5, 10];
  print(names);
  print('nama yang ke 1 adalah: ${names[0]}');
  print(numbers);
  print('jumlah elemen dalam list numbers: ${numbers.length}');
  Map<String, int> umur = {'Nadya': 25, 'Syantika': 30, 'Naraya': 35};
  print(umur);
  print('umur Nadya adalah: ${umur['Nadya']}');
  dynamic g = 'Hello';
  print(g);
  g = 42;
  print(g);
  g = true;
  print(g);
  g = [1, 2, 3];
  print(g);
  g = {'name': 'Syantika', 'age': 30};
  print(g);
  var h = 'Dart';
  print(h);
  h = 'Flutter';
}

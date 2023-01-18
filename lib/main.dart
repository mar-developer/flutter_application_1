import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// //test1
// class _MyAppState extends State<MyApp> {
//   String? _name;
//   dynamic _age;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Age Calculator'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 decoration: InputDecoration(hintText: 'Enter your name'),
//                 onChanged: (name) {
//                   setState(() {
//                     _name = name;
//                   });
//                 },
//               ),
//               TextField(
//                 decoration: InputDecoration(hintText: 'Enter your age'),
//                 keyboardType: TextInputType.number,
//                 onChanged: (age) {
//                   setState(() {
//                     _age = int.parse(age);
//                   });
//                 },
//               ),
//               _name != null && _age != null
//                   ? Text(
//                       "You have ${100 - _age} years to go before you reach 100.")
//                   : Container(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//test2
// class _MyAppState extends State<MyApp> {
//   dynamic phone;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Phone'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 decoration: InputDecoration(hintText: 'Enter phone number'),
//                 keyboardType: TextInputType.number,
//                 onChanged: (number) {
//                   setState(() {
//                     phone = int.parse(number);
//                   });
//                 },
//               ),
//               phone != null && phone > 0
//                   ? Text(
//                       "your phone number is ${phone % 2 == 0 ? "even" : "odd"}")
//                   : Container(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//test3
// void test() {
//   var list = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

//   list.where((number) => number < 5).forEach((number) => print(number));
// }

//test 4
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('get divisors'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                ),
                onChanged: (text) {
                  int number = int.parse(text);
                  List<int> divisors = findDivisors(number);
                  print('Divisors of $number: $divisors');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<int> findDivisors(int n) {
  List<int> divisors = [];
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      divisors.add(i);
    }
  }
  return divisors;
}

import 'package:flutter/material.dart';

// multi layout widget example.
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Layout Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
              height: 400.0,
              width: 300.0,
            ),
            Container(
              color: Colors.yellow,
              height: 220.0,
              width: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(
//     const MaterialApp(
//       title: 'Flutter Tutorial',
//       home: MyHomePage(),
//     ),
//   );
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   // final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hello Max'),
//       ),
//       body: Center(
//        Image(image:AssetImage('assets/images/flowers.jpg'),
//       ),
//       ),
//     );
//   }
// }

// class TutorialHome extends StatelessWidget {
//   const TutorialHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Scaffold is a layout for
//     // the major Material Components.
//     return Scaffold(
//       appBar: AppBar(
//         leading: const IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: 'Navigation menu',
//           onPressed: null,
//         ),
//         title: const Text('Example title'),
//         actions: const [
//           IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//       // body is the majority of the screen.
//       body: const Center(
//         child: Text('Hello, world!'),
//       ),
//       floatingActionButton: const FloatingActionButton(
//         tooltip: 'Add', // used by assistive technologies
//         onPressed: null,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

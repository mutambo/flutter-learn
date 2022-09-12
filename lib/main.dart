import 'package:flutter/material.dart';

void main() => runApp(const MyAPP());

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Application',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(
        title: 'Complex layout example',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({required Key key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product list"),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: const <Widget>[
            ProductBox(
                name: "iPhone",
                description: "Best Brand",
                price: 55000,
                image: "flower.jpg"),
            ProductBox(
                name: "iPhone",
                description: "flower.jpg",
                price: 55000,
                image: "flower.jpg"),
            ProductBox(
                name: "iPhone",
                description: "flower.jpg",
                price: 55000,
                image: "flower.jpg"),
            ProductBox(
                name: "iPhone",
                description: "Best Brand",
                price: 55000,
                image: "flower.jpg"),
            ProductBox(
                name: "iPhone",
                description: "Best Brand",
                price: 55000,
                image: "flower.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {super.key,
      required this.name,
      required this.description,
      required this.price,
      required this.image});
  // super({key:key});
  final String name;
  final String description;
  final int price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 110,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/$image"),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(description),
                    Text("Price:$price")
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
// multi layout widget example.
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiple Layout Widget',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         alignment: Alignment.center,
//         color: Colors.white,
//         child: Stack(
//           children: <Widget>[
//             Container(
//               color: Colors.blue,
//             ),
//             Container(
//               color: Colors.pink,
//               height: 400.0,
//               width: 300.0,
//             ),
//             Container(
//               color: Colors.yellow,
//               height: 220.0,
//               width: 200.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// sample app

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

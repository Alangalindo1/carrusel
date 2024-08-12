import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'hola carrusel',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // A widget which will be started on application startup
        home: const CarruselPeros());
  }
} //fin clase myapp

class CarruselPeros extends StatefulWidget {
  const CarruselPeros({Key? key}) : super(key: key);

  @override
  State<CarruselPeros> createState() => _CarruselPerosState();
} //fin clase carrusel perros stateful

class _CarruselPerosState extends State<CarruselPeros> {
  late PageController _pageController;
  List<String> images = [
    "https://raw.githubusercontent.com/Alangalindo1/LitsviewMacota/main/perros/perro1.jpg",
    "https://raw.githubusercontent.com/Alangalindo1/LitsviewMacota/main/perros/perro2.jpg",
    "https://raw.githubusercontent.com/Alangalindo1/LitsviewMacota/main/perros/perro3.jpg"
  ];

  int activePage = 1;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: 2,
        pageSnapping: true,
        itemBuilder: (context, pagePosition) {
          return Container(
              margin: EdgeInsets.all(10),
              child: Image.network(images[pagePosition]));
        });
  }
} //fin clase estado

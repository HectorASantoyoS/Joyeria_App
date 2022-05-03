import 'package:flutter/material.dart';

void main() {
  runApp(MascotasApp());
} //Funcion principal

class MascotasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App para Joyeria',
        theme: ThemeData(
          primarySwatch: Colors.orangeAccent,
        ),
        home: PaginaInicial());
  } //Widget
} //clase MascotasApp Widgets sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //Widgets con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/anillo.jpg",
    "assets/images/arete.jpg",
    "assets/images/collar.jpg",
    "assets/images/anillo.jpg",
    "assets/images/arete.jpg",
    "assets/images/collar.jpg",
    "assets/images/anillo.jpg",
    "assets/images/arete.jpg",
    "assets/images/collar.jpg",
    "assets/images/anillo.jpg",
    "assets/images/arete.jpg",
    "assets/images/collar.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}

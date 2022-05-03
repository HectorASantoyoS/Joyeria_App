import 'package:flutter/material.dart';
import 'package:santoyo/galeriadejoyas.dart';

void main() {
  runApp(MascotasApp());
} //Funcion principal

class MascotasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App para Joyeria V2',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: PaginaInicial());
  } //Widget
} //clase MascotasApp Widgets sin estado

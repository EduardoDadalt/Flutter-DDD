import 'package:ddd_flutter/Cadastro/Cliente/Aplica%C3%A7%C3%A3o/cliente_rota.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste DDD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClienteRota(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ddd_flutter/Cadastro/Cliente/Apresentacao/cliente_rota.dart';

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

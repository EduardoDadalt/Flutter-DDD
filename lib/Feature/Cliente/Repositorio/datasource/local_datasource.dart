import 'package:ddd_flutter/Feature/Cliente/Dominio/Entidade/cliente_entidade.dart';
import 'package:ddd_flutter/Feature/Cliente/Repositorio/datasource/i_cliente_datasource.dart';

class LocalClienteDatasource implements ClienteDatasource {
  @override
  Future<List<Cliente>> getAll() async {
    return [
      Cliente(nome: 'Eduardo'),
      Cliente(nome: 'Alberto'),
      Cliente(nome: 'Ronaldo'),
    ];
  }
}

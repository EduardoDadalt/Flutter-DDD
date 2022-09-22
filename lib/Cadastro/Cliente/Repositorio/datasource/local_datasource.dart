import 'package:ddd_flutter/Cadastro/Cliente/Dominio/Entidade/cliente_entidade.dart';
import 'package:ddd_flutter/Cadastro/Cliente/Repositorio/datasource/i_cliente_datasource.dart';

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

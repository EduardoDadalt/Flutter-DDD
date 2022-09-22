import 'package:ddd_flutter/Feature/Cliente/Dominio/Entidade/cliente_entidade.dart';
import 'package:ddd_flutter/Feature/Cliente/Repositorio/datasource/i_cliente_datasource.dart';

class ClienteRepositorio {
  ClienteRepositorio(this.clienteDatasource);

  final ClienteDatasource clienteDatasource;

  Future<List<Cliente>> obterClientes() async {
    return clienteDatasource.getAll();
  }
}

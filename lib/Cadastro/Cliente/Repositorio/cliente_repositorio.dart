import 'package:ddd_flutter/Cadastro/Cliente/Dominio/Entidade/cliente_entidade.dart';
import 'package:ddd_flutter/Cadastro/Cliente/Repositorio/datasource/i_cliente_datasource.dart';

class ClienteRepositorio {
  ClienteRepositorio(this.clienteDatasource);

  final ClienteDatasource clienteDatasource;

  Future<List<Cliente>> obterClientes() async {
    return clienteDatasource.getAll();
  }
}

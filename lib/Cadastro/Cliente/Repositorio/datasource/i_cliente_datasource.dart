import 'package:ddd_flutter/Cadastro/Cliente/Dominio/Entidade/cliente_entidade.dart';

abstract class ClienteDatasource {
  Future<List<Cliente>> getAll();
}

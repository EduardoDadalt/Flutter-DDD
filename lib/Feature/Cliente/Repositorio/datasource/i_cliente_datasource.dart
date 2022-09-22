import 'package:ddd_flutter/Feature/Cliente/Dominio/Entidade/cliente_entidade.dart';

abstract class ClienteDatasource {
  Future<List<Cliente>> getAll();
}

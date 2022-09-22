import 'package:flutter/widgets.dart';
import 'package:ddd_flutter/Cadastro/Cliente/Dominio/Entidade/cliente_entidade.dart';
import 'package:ddd_flutter/Cadastro/Cliente/Repositorio/cliente_repositorio.dart';

class ClienteBloc extends ChangeNotifier {
  ClienteBloc(this.clienteRepositorio);

  String _valorPesquisa = "";
  String get valorPesquisa => _valorPesquisa;
  set valorPesquisa(String novoValorPesquisa) {
    _valorPesquisa = novoValorPesquisa;
    notifyListeners();
  }

  final ClienteRepositorio clienteRepositorio;

  Future<List<Cliente>> obterClientes() => clienteRepositorio.obterClientes();
  Future<List<Cliente>> obterClientesFiltrados() async {
    final clientes = await clienteRepositorio.obterClientes();
    return clientes
        .where((cliente) =>
            cliente.nome.toLowerCase().contains(valorPesquisa.toLowerCase()))
        .toList();
  }
}

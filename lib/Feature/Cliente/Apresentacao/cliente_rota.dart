import 'package:flutter/widgets.dart';
import 'package:ddd_flutter/Feature/Cliente/Aplica%C3%A7%C3%A3o/cliente_bloc.dart';
import 'package:ddd_flutter/Feature/Cliente/Apresentacao/cliente_tela.dart';
import 'package:ddd_flutter/Feature/Cliente/Repositorio/cliente_repositorio.dart';
import 'package:ddd_flutter/Feature/Cliente/Repositorio/datasource/i_cliente_datasource.dart';
import 'package:ddd_flutter/Feature/Cliente/Repositorio/datasource/local_datasource.dart';

import '../Aplicação/cliente_provider.dart';

class ClienteRota extends StatelessWidget {
  const ClienteRota({super.key});

  @override
  Widget build(BuildContext context) {
    final ClienteDatasource localClienteDatasource = LocalClienteDatasource();
    final ClienteRepositorio clienteRepositorio =
        ClienteRepositorio(localClienteDatasource);
    final ClienteBloc clienteBloc = ClienteBloc(clienteRepositorio);

    return ClienteProvider(
      notifier: clienteBloc,
      child: const ClienteTela(),
    );

    // ou

    // return ChangeNotifierProvider<ClienteBloc>(
    //   create: (_) => clienteBloc,
    //   child: const ClienteTela(),
    // );
  }
}

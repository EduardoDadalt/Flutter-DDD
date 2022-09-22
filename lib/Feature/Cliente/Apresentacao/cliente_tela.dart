import 'package:flutter/material.dart';
import 'package:ddd_flutter/Feature/Cliente/Aplica%C3%A7%C3%A3o/cliente_bloc.dart';
import 'package:ddd_flutter/Feature/Cliente/Aplica%C3%A7%C3%A3o/cliente_provider.dart';
import 'package:ddd_flutter/Feature/Cliente/Dominio/Entidade/cliente_entidade.dart';

class ClienteTela extends StatelessWidget {
  const ClienteTela({super.key});

  @override
  Widget build(BuildContext context) {
    final ClienteBloc clienteBloc = ClienteProvider.of(context);

    return Scaffold(
        appBar: AppBar(title: const Text("Clientes")),
        body: Column(
          children: [
            TextField(
              decoration: const InputDecoration(label: Text("Pesquisa")),
              onChanged: (value) {
                clienteBloc.valorPesquisa = value;
              },
            ),
            Text('ValorPesquisado: ${clienteBloc.valorPesquisa}'),
            Expanded(
              child: FutureBuilder<List<Cliente>>(
                future: ClienteProvider.of(context).obterClientesFiltrados(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final List<Cliente> clientes = snapshot.data!;
                    return ListView.builder(
                      itemBuilder: (context, index) => ClienteListaItem(
                        cliente: clientes[index],
                      ),
                      itemCount: clientes.length,
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        "Erro",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ));
  }
}

class ClienteListaItem extends StatelessWidget {
  const ClienteListaItem({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cliente.nome),
    );
  }
}

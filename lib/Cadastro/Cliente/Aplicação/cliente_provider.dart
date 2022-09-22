import 'package:flutter/widgets.dart';
import 'package:ddd_flutter/Cadastro/Cliente/Aplica%C3%A7%C3%A3o/cliente_bloc.dart';

class ClienteProvider extends InheritedNotifier<ClienteBloc> {
  const ClienteProvider(
      {super.key, required super.notifier, required super.child});

  static ClienteBloc of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ClienteProvider>()!
        .notifier!;
  }
}

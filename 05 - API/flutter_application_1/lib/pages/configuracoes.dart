import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({super.key});

  @override
  State<Configuracoes> createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {
  final _formKey = GlobalKey<FormState>();
  int _abaInicial = 0;

  carregarConfiguracoes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _abaInicial = prefs.getInt('abaInicial') ?? 0;
    });
  }

  @override
  void initState() {
    super.initState();
    carregarConfiguracoes();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            children: [
              DropdownButtonFormField(
                validator: (value) {
                  if (value == null) {
                    return 'Selecione uma opção';
                  }
                  return null;
                },
                items: const [
                  DropdownMenuItem(
                    value: 0,
                    child: Text('Listar'),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text('Novo'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('Pesquisar'),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text('Configurações'),
                  ),
                ],
                onChanged: (selected) {
                  setState(() {
                    _abaInicial = selected!;
                  });
                },
                value: _abaInicial,
                decoration: const InputDecoration(labelText: 'Aba Inicial'),
              ),
              const SizedBox(height: 10),
              Text(
                'Selecione a aba inicial para quando você abrir o aplicativo',
                style: TextStyle(color: Colors.grey.shade500, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    SharedPreferences.getInstance().then((prefs) {
                      prefs.setInt('abaInicial', _abaInicial);
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Configurações salvas com sucesso!')),
                    );
                  }
                },
                child: const Text('Salvar Configurações'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

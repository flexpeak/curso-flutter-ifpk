import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Novo extends StatefulWidget {
  final Function changeIndex;
  const Novo({super.key, required this.changeIndex});

  @override
  State<Novo> createState() => _NovoState();
}

class _NovoState extends State<Novo> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();
  final TextEditingController _precoController = TextEditingController();

  bool _loading = false;

  sendData(context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _loading = true;
      });
      try {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Enviando dados para o servidor')),
        );

        final response = await http.post(Uri.parse('https://dummyjson.com/products/add'), body: {
          'name': _nomeController.text,
          'description': _descricaoController.text,
          'price': _precoController.text,
        });

        if (response.statusCode == 200) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Produto inserido com sucesso')),
          );

          widget.changeIndex(0);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Erro ao inserir o produto')),
          );
        }
      } catch (e) {
        const SnackBar(
          content: Text('Erro ao cadastrar o produto'),
        );
      } finally {
        setState(() {
          _loading = false;
        });
      }
    } else {
      
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            const Text(
              'Cadastro de Produtos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome do Produto',
                prefixIcon: Icon(Icons.local_activity),
              ),
              maxLength: 50,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Este campo é obrigatório';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _descricaoController,
              maxLines: 2,
              decoration: const InputDecoration(
                labelText: 'Descrição',
                hintText: 'Digite a descrição do produto',
                icon: Icon(Icons.description),
                suffixIcon: Icon(Icons.description),
                helperText: 'Você deve preencher esse campo',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Este campo é obrigatório';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _precoController,
              keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))],
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.lightBlue[100],
                  labelText: 'Preço',
                  prefix: const Text('R\$ '),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Este campo é obrigatório';
                }
                return null;
              },
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: _loading
                  ? null
                  : () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          _loading = true;
                        });

                        sendData(context);
                      }
                    },
              child: const Text('CADASTRAR PRODUTO'),
            ),
          ],
        ),
      ),
    );
  }
}

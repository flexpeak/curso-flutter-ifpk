import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      title: 'Formulário Estilizado',
      theme: ThemeData(primarySwatch: Colors.red, useMaterial3: false),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Controladores para os campos de texto
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  MyHomePage({super.key});

  InputDecoration getFieldDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      filled: true,
      fillColor: Colors.white,
      prefixIcon: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Cadastre-se'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          // Imagem de fundo
          Image.asset(
            'assets/pattern.jpg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.topCenter,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Logo do Sistema
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Image.asset(
                          'assets/logo.png',
                          width: 160,
                        ),
                      ),
                      const Text(
                        'Aplicativo de Vendas',
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                  // Formulário
                  Form(
                    key: _formKey,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: _nameController,
                              decoration: getFieldDecoration('Nome', Icons.person),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _emailController,
                              decoration: getFieldDecoration('Email', Icons.email),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              decoration: getFieldDecoration('Senha', Icons.lock),
                              obscureText: true,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _dateOfBirthController,
                              decoration: getFieldDecoration('Data de Nascimento', Icons.calendar_today),
                              readOnly: true,
                              onTap: () async {
                                final date = await showDatePicker(
                                  locale: const Locale('pt', 'BR'),
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100),
                                );
                                if (date == null) return;
                                _dateOfBirthController.text = "${date.day}/${date.month}/${date.year}";
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            DropdownButtonFormField(
                              items: const [
                                DropdownMenuItem(
                                  value: 'M',
                                  child: Text('Masculino'),
                                ),
                                DropdownMenuItem(
                                  value: 'F',
                                  child: Text('Feminino'),
                                ),
                              ],
                              onChanged: (value) {
                                // Lógica ao selecionar o estado
                              },
                              decoration: getFieldDecoration('Sexo', Icons.person_pin_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const Text('Tem certeza que deseja criar o usuário?'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                const SnackBar(
                                                  content: Text('Envio cancelado'),
                                                ),
                                              );
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Não'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                const SnackBar(
                                                  content: Text('Usuário criado com sucesso'),
                                                ),
                                              );
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Sim'),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  fixedSize: const Size(200, 60),
                                ),
                                child: const Text('CADASTRAR-SE'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

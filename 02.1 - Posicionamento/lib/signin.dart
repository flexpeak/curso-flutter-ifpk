import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formulário Estilizado',
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: false
      ),
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

  InputDecoration getFieldDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      prefixIcon: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          // Imagem de fundo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pattern.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Logo do Sistema
                  Image.asset('assets/logo.png', width: 200,),
                  // Formulário
                  Card(
                    margin: const EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: _nameController,
                            decoration: getFieldDecoration('Nome', Icons.person),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            controller: _emailController,
                            decoration: getFieldDecoration('Email', Icons.email),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            controller: _passwordController,
                            decoration: getFieldDecoration('Senha', Icons.lock),
                            obscureText: true,
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            controller: _dateOfBirthController,
                            decoration: getFieldDecoration('Data de Nascimento', Icons.calendar_today),
                          ),
                          const SizedBox(height: 20,),
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
                            decoration: getFieldDecoration('Estado', Icons.map),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: ElevatedButton(
                              onPressed: () {
                                // Lógica para cadastrar-se
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                fixedSize: const Size(200, 40),
                              ),
                              child: const Text('Cadastrar-se'),
                            ),
                          ),
                        ],
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

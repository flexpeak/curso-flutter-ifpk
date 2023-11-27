import 'package:flutter/cupertino.dart';
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
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate, GlobalCupertinoLocalizations.delegate],
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

  @override
  Widget build(BuildContext context) {
    final TargetPlatform _plataform = Theme.of(context).platform;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Cadastre-se'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ElevatedButton(
          onPressed: () async {
            showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return Container(
                    color: Colors.white,
                    height: 216,
                    padding: const EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: SafeArea(
                      top: false,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (DateTime value) {
                          print(value.toString());
                        },
                      ),
                    ),
                  );
                });
          },
          child: const Text('Abrir Calendário'),
        ));
  }
}

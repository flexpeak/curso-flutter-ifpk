import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [
        Locale('pt', 'BR'), // Português do Brasil
        // Adicione mais localidades conforme necessário
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Flutter Form Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulário Diversificado'),
        ),
        body: FormWidget(),
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String? selectedValue;
  String? radioSelectedValue;
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // TextField com borda
              TextFormField(
                // obscureText: true, // Oculta o texto digitado
                // keyboardType: TextInputType.emailAddress, // Define o tipo de teclado para e-mail
                // keyboardType: TextInputType.number, // Define o tipo de teclado para números
                // keyboardType: TextInputType.phone, // Define o tipo de teclado para telefone
                // keyboardType: TextInputType.numberWithOptions(decimal: true), // Define o tipo de teclado para números decimais
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  // floatingLabelBehavior: FloatingLabelBehavior.always, // Mantém o rótulo sempre visível
                  // border: OutlineInputBorder(), // Adiciona borda
                  // border: InputBorder.none, // Remove a borda
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(15.0),
                  // ), // bordas arredondadas
                  labelText: 'Campo com Borda',
                  // hintText: 'Enter your text here', // Texto de placeholder
                ),
                // validator: (value) {
                //   // Adiciona validação para o endereço de e-mail
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter an email';
                //   }
                //   // Expressão regular para validar o endereço de e-mail
                //   String pattern = r'\w+@\w+\.\w+';
                //   if (!RegExp(pattern).hasMatch(value)) {
                //     return 'Please enter a valid email address';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 20),

              const Text(
                'Rótulo do Campo',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[400]!,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              TextField(
                style: const TextStyle(color: Color.fromARGB(255, 158, 15, 15)), // Cor padrão do texto
                cursorColor: Colors.amber,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.lightBlue[50],
                  labelText: 'Dynamic Color TextField',
                  labelStyle: const TextStyle(color: Color.fromARGB(255, 45, 194, 82)),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 224, 224)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  floatingLabelStyle: const TextStyle(color: Colors.brown),
                ),
              ),

              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                width: double.infinity,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    focusColor: Colors.transparent,
                    value: selectedValue,
                    hint: const Text('Select an Option'),
                    items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        print(newValue);
                        selectedValue = newValue;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RadioListTile<String>(
                    title: const Text('Option 1'),
                    value: 'option1',
                    groupValue: radioSelectedValue,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        radioSelectedValue = value;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Option 2'),
                    value: 'option2',
                    groupValue: radioSelectedValue,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        radioSelectedValue = value;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Option 3'),
                    value: 'option3',
                    groupValue: radioSelectedValue,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        radioSelectedValue = value;
                      });
                    },
                  ),
                  // ... Adicione mais opções conforme necessário
                ],
              ),

              const SizedBox(height: 20),
              CheckboxListTile(
                title: const Text("Select this option"),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading, // Posiciona a caixa de seleção à esquerda do texto
              ),

              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter Date',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                readOnly: true, // Impede a digitação manual, forçando a seleção via DatePicker
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2025), locale: const Locale('pt', 'BR'));
                  if (pickedDate != null) {
                    String formattedDate = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    setState(() {
                      print(formattedDate); // Exibe a data selecionada no campo de texto
                    });
                  }
                },
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Se o formulário for válido, este bloco será executado
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 33, 243, 44), // Cor de fundo do botão
                  foregroundColor: Colors.white, // Cor do texto
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Bordas arredondadas
                  ),
                  elevation: 0, // Remove a sombra
                  side: const BorderSide(color: Color.fromARGB(255, 243, 110, 33), width: 2), // Borda do botão
                ),
                child: const Text('Submit'),
              )  
            ],
          ),
        ),
      ),
    );
  }
}

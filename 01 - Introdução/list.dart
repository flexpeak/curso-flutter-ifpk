main() {
  final List usuarios = ["João", "Maria", "Roberto", "Júlia"];

  String nomePrimeiroUsuario = usuarios[0];

  if (nomePrimeiroUsuario == "João") {
    print("Sim, o primeiro usuário é João");
  } else {
    print("Não, não é o João");
  }

  nomePrimeiroUsuario == "João"
      ? print("Sim, o primeiro usuário é João")
      : print("Não é o João");


  print(usuarios.length);
  
  // for (int x = 0; x < usuarios.length; x++) {
  //   print(usuarios[x]);
  // }

  for (String usuario in usuarios) {
    print(usuario);
  }

  try {
    // requisição para uma API
  } catch (error) {
    // mensagem de erro para o usuário
  }

}

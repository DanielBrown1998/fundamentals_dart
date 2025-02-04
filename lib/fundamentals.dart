//lib/fundamentals.dart
class Conta {
  final Pessoa titular;
  double saldo = 0;
  Conta({required this.titular});

  depositar(double value){}
  sacar(double value){}
  transferir(double value, Conta conta){}
}

class Pessoa {
  String nome;
  String cpf;
  String dataNascimento;

  Pessoa({required this.nome, required this.cpf, required this.dataNascimento});
}

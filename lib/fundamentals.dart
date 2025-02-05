//lib/fundamentals.dart
class Conta {
  final Pessoa titular;
  double _saldo = 0;
  Conta({required this.titular});

  depositar(double value) {
    print("depositando $value reais na conta da ${titular.nome}");
    _saldo += value;
    print("Deposito realizado com sucesso");
    print("${titular.nome}, valor atualizado: $_saldo");
  }

  bool sacar(double value) {
    if (_saldo < value) {
      print("Operação não efetuada!");
      print("Saldo insuficiente!");
      return false;
    }
    print("sacando $value reais na conta da ${titular.nome}");
    _saldo -= value;
    print("Saque realizado com sucesso");
    print("${titular.nome}, valor atualizado: $_saldo");
    return true;
  }

  bool transferir(double value, Conta conta) {
    if (_saldo < value) {
      print("Operação não efetuada!");
      print("Saldo insuficiente!");
      return false;
    }
    _saldo -= value;
    conta.depositar(value);
    print("transferência realizada com sucesso");
    print("${titular.nome}, valor atualizado: $_saldo");
    return true;
  }

  get saldo {
    return "_";
  }
}

class Pessoa {
  String nome;
  String cpf;
  String dataNascimento;

  Pessoa({required this.nome, required this.cpf, required this.dataNascimento});
}

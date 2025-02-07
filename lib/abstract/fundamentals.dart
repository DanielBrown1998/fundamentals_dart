//lib/abstract/fundamentals.dart
abstract class Conta {
  final Pessoa titular;
  double _saldo = 0;
  double taxaEmp = 0.13;
  double valorDividaTotal = 0;
  double valorMaxEmp = .2;

  
  Conta({required this.titular});

  emprestimo(double value, int tempoPagamentoAnos) {}

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

  double get saldo {
    return _saldo;
  }

  set saldo(double value) {
    _saldo += value;
  }
}

abstract class Pessoa {
  String nome;

  Pessoa({required this.nome});
}

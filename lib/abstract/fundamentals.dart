//lib/abstract/fundamentals.dart
abstract class Conta implements Rendimento{
  final Pessoa titular;
  double _saldo = 0;
  final double taxaEmp;
  double valorDividaTotal = 0;
  double valorEmp = 0;
  final double valorMaxEmp;

  Conta(
      {required this.titular,
      required this.valorMaxEmp,
      required this.taxaEmp});

  List<double>? emprestimo(double value, int tempoPagamentoAnos) {
    return [];
  }

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

abstract class Rendimento {
  double calculaRendimento(double value, int time);
  double calculaJuros(double valueEmp, double valuePay);
}

mixin Imposto {
  double taxa = 0.04;

  double calculaTaxa(double value) {
    return value * taxa;
  }
}

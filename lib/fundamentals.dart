import 'package:fundamentals/abstract/fundamentals.dart';

class ContaCorrente extends Conta with Imposto {
  ContaCorrente(
      {required super.titular,
      required super.taxaEmp,
      required super.valorMaxEmp}) {
    saldo += 100;
  }

  @override
  List<double>? emprestimo(double value, int tempoPagamentoAnos) {
    if (value > valorMaxEmp) {
      print("Emprestimo fora dos limites estabelecidos");
      print("Valor máximo permitido: $valorMaxEmp");
      return null;
    } else {
      valorEmp = value;
      saldo += value;
      for (int i = 0; i < tempoPagamentoAnos; i++) {
        valorDividaTotal += value * taxaEmp;
        value += value * taxaEmp;
      }
      valorDividaTotal += calculaTaxa(value);
      double valorPay = valorDividaTotal;
      return [valorEmp, valorPay];
    }
  }

  @override
  double calculaJuros(double valueEmp, double valuePay) {
    return valorDividaTotal - valorEmp;
  }

  @override
  double calculaRendimento(double value, int time) {
    for (int i = 0; i < time; i++) {
      value += value * taxaEmp;
    }
    return value;
  }
}

class ContaPoupanca extends Conta {
  ContaPoupanca(
      {required super.titular,
      required super.taxaEmp,
      required super.valorMaxEmp});

  @override
  bool transferir(double value, Conta conta) {
    if (conta.titular.nome != super.titular.nome) {
      print("Conta poupança s[o pode transferir fundos"
          "para uma outra conta do próprio titulas]");
      return false;
    }
    return super.transferir(value, conta);
  }

  @override
  double calculaJuros(double valueEmp, double valuePay) {
    return taxaEmp;
  }

  @override
  double calculaRendimento(double value, int time) {
    for (int i = 0; i < time; i++) {
      value += value * taxaEmp;
    }
    return value;
  }
}

class PF extends Pessoa {
  final String dataNascimento;
  final String cpf;
  PF({required super.nome, required this.cpf, required this.dataNascimento});
}

class PJ extends Pessoa {
  final String cnpj;
  final String razaoSocial;

  PJ({required super.nome, required this.cnpj, required this.razaoSocial});
}

import 'package:fundamentals/abstract/fundamentals.dart';

class ContaCorrente extends Conta {
  ContaCorrente({required super.titular}) {
    saldo += 100;
  }

  @override
  emprestimo(double value, int tempoPagamentoAnos) {
    if (value > valorMaxEmp) {
      print("Emprestimo fora dos limites estabelecidos");
      print("Valor máximo permitido: $valorMaxEmp");
    } else {
      saldo += value;
      for (int i = 0; i < tempoPagamentoAnos; i++) {
        valorDividaTotal += value * taxaEmp;
        value = value * taxaEmp;
      }
    }
  }
}

class ContaPoupanca extends Conta {
  ContaPoupanca({required super.titular});

  @override
  bool transferir(double value, Conta conta) {
    if (conta.titular.nome != super.titular.nome) {
      print("Conta poupança s[o pode transferir fundos"
          "para uma outra conta do próprio titulas]");
      return false;
    }
    return super.transferir(value, conta);
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

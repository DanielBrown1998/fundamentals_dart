//bin/fundamentals.dart
import 'package:fundamentals/abstract/fundamentals.dart';
import 'package:fundamentals/fundamentals.dart';

void main() {
  List<Conta> contas = [
    ContaCorrente(
        titular: PF(
          nome: "Rafael", dataNascimento: '21-04-2001', cpf: '99999999999'),
          taxaEmp: .14,
          valorMaxEmp: .3
        ),
    ContaCorrente(
        titular: PF(
          nome: "Rafaela", dataNascimento: '23-07-1998', cpf: '99999999999'),
          taxaEmp: .14,
          valorMaxEmp: .3
        ),
    ContaCorrente(
        titular: PF(
          nome: "Marcelo", dataNascimento: '19-04-1971', cpf: '99999999999'),
          taxaEmp: .14,
          valorMaxEmp: .3
        )
  ];

  contas[1].depositar(100);
  print("-------------------");
  contas[1].transferir(50, contas[0]);
}

//bin/fundamentals.dart
import 'package:fundamentals/fundamentals.dart';
import 'dart:io';

void main() {
  List<Conta> contas = [
    Conta(titular: Pessoa(nome: "Rafael", cpf: '12342341231', dataNascimento: '21-04-2001')),
    Conta(titular: Pessoa(nome: "Rafaela", cpf: '00000000000', dataNascimento: '23-07-1998')),
    Conta(titular: Pessoa(nome: "Marcelo", cpf: '99999999999', dataNascimento: '19-04-1971'))
  ];
}

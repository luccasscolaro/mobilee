import 'package:flutter/material.dart';
import 'package:rede/modelo_tarefa.dart';

// ignore: camel_case_types
class controle_tarefa extends ChangeNotifier {
  List<Modelo_tarefa> tarefas = [];
}

void adicionar(String conteudo) {
  tarefas.add(Modelo_tarefa(titulo: Conteudo));
  notifyListeners();
}

void notifyListeners() {
}

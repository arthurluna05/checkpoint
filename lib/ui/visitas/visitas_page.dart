import 'package:flutter/material.dart';

import '../widgets/visita_card.dart';

const _titulos = [
  'Manutenção do ar-condicionado',
  'Instalação de roteador',
  'Vistoria de câmeras',
];

const _clientes = [
  'Padaria Pão Quente',
  'Escritório Contábil Silva',
  'Condomínio Solar das Palmeiras',
];

const _enderecos = [
  'Av. Murilo Dantas, 300 — Farolândia',
  'Rua Laranjeiras, 45, sala 302, Edifício Comercial Sergipe Center — Centro, Aracaju/SE',
  'Rua das Palmeiras, 1200 — Atalaia',
];

const _horarios = ['09:00', '14:30', '08:00'];

class VisitasPage extends StatelessWidget {
  const VisitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minhas visitas')),
      body: ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          final i = index % 3;

          return VisitaCard(
            titulo: '${index + 1}. ${_titulos[i]}',
            cliente: _clientes[i],
            endereco: _enderecos[i],
            horario: 'Dia ${index ~/ 3 + 1}, ${_horarios[i]}',
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Nova visita: chega na Aula 19')),
          );
        },
        tooltip: 'Nova visita',
        child: const Icon(Icons.add),
      ),
    );
  }
}

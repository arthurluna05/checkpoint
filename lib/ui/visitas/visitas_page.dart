import 'package:flutter/material.dart';

import '../widgets/visita_card.dart';

class VisitasPage extends StatelessWidget {
  const VisitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minhas visitas')),
      body: ListView(
        children: const [
          VisitaCard(
            titulo: 'Manutenção do ar-condicionado',
            cliente: 'Padaria Pão Quente',
            endereco: 'Av. Murilo Dantas, 300 — Farolândia',
            horario: 'Hoje, 09:00',
          ),
          VisitaCard(
            titulo: 'Instalação de roteador',
            cliente: 'Escritório Contábil Silva',
            endereco: 'Rua Laranjeiras, 45 — Centro',
            horario: 'Hoje, 14:30',
          ),
          VisitaCard(
            titulo: 'Vistoria de câmeras',
            cliente: 'Condomínio Solar das Palmeiras',
            endereco: 'Rua das Palmeiras, 1200 — Atalaia',
            horario: 'Amanhã, 08:00',
          ),
        ],
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

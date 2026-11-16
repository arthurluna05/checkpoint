import 'package:flutter/material.dart';

class VisitaCard extends StatefulWidget {
  const VisitaCard({
    super.key,
    required this.titulo,
    required this.cliente,
    required this.endereco,
    required this.horario,
  });

  final String titulo;
  final String cliente;
  final String endereco;
  final String horario;

  @override
  State<VisitaCard> createState() => _VisitaCardState();
}

class _VisitaCardState extends State<VisitaCard> {
  bool _concluida = false;

  void _alternarConcluida() {
    setState(() {
      _concluida = !_concluida;
    });
  }

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              child: Text(
                widget.cliente.isNotEmpty
                    ? widget.cliente[0].toUpperCase()
                    : '?',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.titulo, style: tema.textTheme.titleMedium),
                  Text(widget.cliente),
                  Text(widget.endereco, style: tema.textTheme.bodySmall),
                  Text(widget.horario, style: tema.textTheme.labelLarge),
                ],
              ),
            ),
            IconButton(
              onPressed: _alternarConcluida,
              tooltip: _concluida
                  ? 'Marcar como pendente'
                  : 'Marcar como concluída',
              icon: Icon(
                _concluida ? Icons.check_circle : Icons.radio_button_unchecked,
                color: _concluida ? Colors.green : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

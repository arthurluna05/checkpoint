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

    debugPrint('VisitaCard "${widget.titulo}" → concluída = $_concluida');
  }

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar com a inicial do cliente
            CircleAvatar(
              child: Text(
                widget.cliente.isNotEmpty
                    ? widget.cliente[0].toUpperCase()
                    : '?',
              ),
            ),

            const SizedBox(width: 16),

            // Informações da visita
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Título
                  Text(widget.titulo, style: tema.textTheme.titleMedium),

                  const SizedBox(height: 4),

                  // Nome do cliente
                  Text(widget.cliente),

                  const SizedBox(height: 12),

                  // Endereço
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.location_on, size: 18),
                      const SizedBox(width: 4),
                      Expanded(child: Text(widget.endereco, softWrap: true)),
                    ],
                  ),

                  const SizedBox(height: 8),

                  // Horário
                  Row(
                    children: [
                      const Icon(Icons.access_time, size: 18),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          widget.horario,
                          style: tema.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            // Botão para concluir ou reabrir a visita
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

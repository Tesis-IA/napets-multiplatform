import 'package:flutter/material.dart';
import 'package:napets/src/presentation/modules/plagasyenfermedades/enfermedad_item.dart';

class PlagasYEnfermedadesView extends StatelessWidget {
  const PlagasYEnfermedadesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: 25,
            itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: EnfermedadCard(),
                )));
  }
}

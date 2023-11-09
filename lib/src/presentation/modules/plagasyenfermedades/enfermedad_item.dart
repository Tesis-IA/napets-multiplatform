import 'package:flutter/material.dart';

class EnfermedadCard extends StatelessWidget {
  const EnfermedadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color(0xFFffffff),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0,
            spreadRadius: 5.0,
            offset: Offset(
              5.0,
              5.0,
            ),
          )
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image(image: AssetImage('assets/images/planta.png')),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Fangus'),
                Text(
                  'Anublo de arroz',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Center(
            child: Icon(Icons.arrow_forward_ios_rounded),
          )
        ],
      ),
    );
  }
}

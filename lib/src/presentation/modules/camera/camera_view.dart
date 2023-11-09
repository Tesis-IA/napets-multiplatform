import 'package:flutter/material.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Captura una fotografía de la parte afectada de la planta',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
            width: 200,
            child: Image(image: AssetImage('assets/images/photo_back.png')),
          ),
          Container(
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
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Text(
                        'Sane su cultivo',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage('assets/images/step_1.png')),
                          Text('Tomar foto')
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/images/next.png'),
                        height: 40,
                        width: 40,
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('assets/images/step_2.png')),
                          Text('Ver diagnostico'),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/images/next.png'),
                        height: 40,
                        width: 40,
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('assets/images/step_3.png')),
                          Row(
                            children: [
                              Text(
                                'Obtener el\n tratamiento',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Text(
                    "Nota: Trate de que la fotografía tomada no sea borrosa, ya que afectaría en la detección de la enfermedad")
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MaterialButton(
              onPressed: () async {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.green,
              child: const Text(
                "Capturar fotografía",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

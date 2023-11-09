import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:napets/src/presentation/global_widgets/emailtextfield.dart';
import 'package:napets/src/presentation/global_widgets/passwordtextfield.dart';

class LoginViewN extends StatelessWidget {
  const LoginViewN({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passcontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                      width: 180,
                      height: 300,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/rice.png'))
                ],
              ),
            ),
            Column(
              children: [
                const Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Iniciar session",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                const Row(
                  children: [
                    Divider(
                      height: 20,
                    ),
                    Text(
                      "Por favor Inicia session para continuar",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ]
                  .map((widget) => Padding(
                        padding: const EdgeInsets.all(8),
                        child: widget,
                      ))
                  .toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: EmailTextField(
                        controller: emailcontroller,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: PasswordTextField(
                        controller: passcontroller,
                        hintext: "Contraseña",
                      ))
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    MaterialButton(
                      onPressed: () async {
                        await Future(() => GoRouter.of(context).go('/home'));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.green,
                      child: const Row(
                        children: [
                          Text(
                            "Iniciar session",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ])
                ],
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "No tienes una cuenta?",
                  style: TextStyle(color: Colors.black),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Registrare aqui",
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(
      {super.key, this.hintext, this.onChanged, required this.controller});

  final String? hintext;
  final void Function(String)? onChanged;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    bool isObscured = true;
    return StatefulBuilder(builder: (context, setState) {
      final visibilityIcon =
          isObscured ? Icons.visibility_off : Icons.visibility;
      return TextField(
        controller: controller,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        obscureText: isObscured,
        style: const TextStyle(fontSize: 18),
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: hintext,
            prefixIcon: const Icon(
              Icons.lock,
              color: Colors.black,
            ),
            suffixIcon: InkWell(
                onTap: () => setState(() => isObscured = !isObscured),
                child: Icon(
                  visibilityIcon,
                  color: Colors.black,
                ))),
        inputFormatters: [FilteringTextInputFormatter.deny(" ")],
      );
    });
  }
}

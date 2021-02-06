import 'package:animations_flutter/screens/login/widgets/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            InputField(
              hint: 'Nome',
              obscure: false,
              icon: Icons.person_outlined,
            ),
            InputField(
              hint: 'Senha',
              obscure: true,
              icon: Icons.lock_outlined,
            )
          ],
        ),
      ),
    );
  }
}

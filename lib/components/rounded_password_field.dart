import 'package:flutter/material.dart';

import '../constants.dart';
import 'text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
    final TextEditingController controller;
    
    const RoundedPasswordField({
        Key key, 
        this.controller,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return TextFieldContainer(
            child: TextField(
                obscureText: true,
                controller: controller,
                decoration: InputDecoration(
                    hintText: "Senha",
                    icon: Icon(
                        Icons.lock,
                        color: kPrimaryColor,
                    ),
                    suffixIcon: Icon(
                        Icons.visibility,
                        color: kPrimaryColor,
                    ),
                    border: InputBorder.none
                ),
            ),
        );
    }
}
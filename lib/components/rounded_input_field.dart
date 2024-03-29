import 'package:agrovision_app/constants.dart';
import 'package:flutter/material.dart';

import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
    final String hintText;
    final IconData icon;
    final TextEditingController controller;
    
    const RoundedInputField({
        Key key, 
        this.hintText, 
        this.icon, 
        this.controller,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return TextFieldContainer(
            child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    icon: Icon(
                        icon, 
                        color: kPrimaryColor,
                    ),
                    hintText: hintText,
                    border: InputBorder.none,
                ),
            ),
        );
    }
}
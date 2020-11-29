import 'package:agrovision_app/Screens/Products/products_screen.dart';
import 'package:agrovision_app/Screens/Signup/signup_screen.dart';
import 'package:agrovision_app/components/already_have_an_account_check.dart';
import 'package:agrovision_app/components/rounded_button.dart';
import 'package:agrovision_app/components/rounded_input_field.dart';
import 'package:agrovision_app/components/rounded_password_field.dart';
import 'package:agrovision_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'backgound.dart';

class Body extends StatelessWidget {
    const Body({
        Key key,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size; // Esse tamanho nos da o tamanho total da tela
        return Background(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Text(
                        "LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    SizedBox(
                        height: size.height * 0.03,
                    ),
                    Image.asset(
                        "assets/images/logo.png",
                        height: size.height * 0.2,
                    ),
                    SizedBox(
                        height: size.height * 0.05,
                    ),
                    RoundedInputField(
                        hintText: "Seu CAD/PRO",
                        icon: Icons.person,
                    ),
                    RoundedPasswordField(
                    ),
                    RoundedButton(
                        text: "LOGIN",
                        color: kPrimaryColor,
                        press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) {
                                        return ProductsScreen();
                                    }
                                ),
                            );
                        },
                    ),
                    SizedBox(
                        height: size.height * 0.05,
                    ),
                    AlreadyHaveAnAccountCheck(
                        press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) {
                                        return SignUpScreen();
                                    }
                                ),
                            );
                        },
                    ),
                ],
            ),
        );
    }
}


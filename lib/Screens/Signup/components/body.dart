import 'package:agrovision_app/Screens/Login/login_screen.dart';
import 'package:agrovision_app/components/already_have_an_account_check.dart';
import 'package:agrovision_app/resources/signup_form.dart';
import 'package:flutter/material.dart';

import 'backgound.dart';

class Body extends StatelessWidget {
    const Body({
        Key key,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size; // Esse tamanho nos da o tamanho total da tela
        return Background(
            child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text(
                            "CADASTRO",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                        ),
                        SizedBox(
                            height: size.height * 0.03,
                        ),
                        SignUpForm(),
                        SizedBox(
                            height: size.height * 0.05,
                        ),
                        AlreadyHaveAnAccountCheck(
                            login: false,
                            press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) {
                                            return LoginScreen();
                                        }
                                    ),
                                );
                            },
                        ),
                    ],
                ),
            ),
        );
    }
}




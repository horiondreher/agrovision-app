import 'dart:async';
import 'dart:convert';

import 'package:agrovision_app/components/rounded_button.dart';
import 'package:agrovision_app/components/rounded_input_field.dart';
import 'package:agrovision_app/components/rounded_password_field.dart';
import 'package:agrovision_app/models/farmer_model.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../constants.dart';

Future<FarmerModel> createFarmer(String full_name, String farm_name, String city, String address, 
                            String cep, String email, String phone, String cpf, String cad_pro, String password) async {

    final String apiURL = "https://agrovision-api.herokuapp.com/register_farmer";                 
    
    final response = await http.post(
        apiURL, 
        body: {
            "full_name" : full_name,
            "farm_name" : farm_name,
            "city": city,
            "address" : address,
            "cep": cep,
            "email": email,
            "phone": phone,
            "cpf": cpf,
            "cad_pro": cad_pro,
            "password": password
        }
    );
    if (response.statusCode == 201) {
        final String responseString = response.body;
        return farmerModelFromJson(responseString);
    } else {
        return null;
    }
}

class SignUpForm extends StatefulWidget {
    @override
    _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
    FarmerModel _farmer;

    final nameController = TextEditingController();
    final propertyController = TextEditingController();
    final cityController = TextEditingController();
    final addressController = TextEditingController();
    final cepController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final cpfController = TextEditingController();
    final cadproController = TextEditingController();
    final passwordController = TextEditingController();

    @override
    void dispose() {
        // Clean up the controller when the widget is disposed.
        nameController.dispose();
        propertyController.dispose();
        cityController.dispose();
        addressController.dispose();
        cepController.dispose();
        emailController.dispose();
        phoneController.dispose();
        cpfController.dispose();
        cadproController.dispose();
        passwordController.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Container(
            child: (_farmer == null)
                ? Column(
                    children: <Widget>[
                        RoundedInputField(
                            hintText: "Nome Completo",
                            icon: Icons.person,
                            controller: nameController,
                        ),
                        RoundedInputField(
                            hintText: "Propriedade",
                            icon: Icons.home,
                            controller: propertyController,
                        ),
                        RoundedInputField(
                            hintText: "Cidade",
                            icon: Icons.location_city,
                            controller: cityController,
                        ),
                        RoundedInputField(
                            hintText: "Endereço",
                            icon: Icons.location_on,
                            controller: addressController,
                        ),
                        RoundedInputField(
                            hintText: "CEP",
                            icon: Icons.location_on,
                            controller: cepController,
                        ),
                        RoundedInputField(
                            hintText: "E-mail",
                            icon: Icons.email,
                            controller: emailController,
                        ),
                        RoundedInputField(
                            hintText: "Telefone",
                            icon: Icons.phone,
                            controller: phoneController,
                        ),
                        RoundedInputField(
                            hintText: "CPF",
                            icon: Icons.description,
                            controller: cpfController,
                        ),
                        RoundedInputField(
                            hintText: "CAD/PRO",
                            icon: Icons.description,
                            controller: cadproController,
                        ),
                        RoundedPasswordField(
                            controller: passwordController,
                        ),
                        RoundedButton(
                            text: "FINALIZAR CADASTRO",
                            color: kPrimaryColor,
                            press: () async {
                                FarmerModel farmer = await createFarmer(
                                    nameController.text,
                                    propertyController.text,
                                    cityController.text,
                                    addressController.text,
                                    cepController.text,
                                    emailController.text,
                                    phoneController.text,
                                    cpfController.text,
                                    cadproController.text,
                                    passwordController.text
                                );
                                setState(() {
                                    _farmer = farmer;
                                });
                            },
                        ),
                    ],
                )
            : Container(
                child: Text("The user ${_farmer.fullName},is created successfully"),
            )
        );
    }
}

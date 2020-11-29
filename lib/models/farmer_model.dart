import 'dart:convert';

FarmerModel farmerModelFromJson(String str) => FarmerModel.fromJson(json.decode(str));

String farmerModelToJson(FarmerModel data) => json.encode(data.toJson());

class FarmerModel {
    FarmerModel({
        this.fullName,
        this.farmName,
        this.city,
        this.address,
        this.cep,
        this.email,
        this.phone,
        this.cpf,
        this.cadPro,
        this.password,
    });

    String fullName;
    String farmName;
    String city;
    String address;
    String cep;
    String email;
    String phone;
    String cpf;
    String cadPro;
    String password;

    factory FarmerModel.fromJson(Map<String, dynamic> json) => FarmerModel(
        fullName: json["full_name"],
        farmName: json["farm_name"],
        city: json["city"],
        address: json["address"],
        cep: json["cep"],
        email: json["email"],
        phone: json["phone"],
        cpf: json["cpf"],
        cadPro: json["cad_pro"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "farm_name": farmName,
        "city": city,
        "address": address,
        "cep": cep,
        "email": email,
        "phone": phone,
        "cpf": cpf,
        "cad_pro": cadPro,
        "password": password,
    };
}

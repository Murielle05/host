import 'package:flutter/material.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';
import 'package:host/components/form/customButton.dart';
import 'package:host/components/form/customFormField.dart';
class AddHotelsPage extends StatefulWidget {
  static String routeName = "/add-hotel";
  const AddHotelsPage({super.key});

  @override
  State<AddHotelsPage> createState() => _AddHotelsPageState();
}

class _AddHotelsPageState extends State<AddHotelsPage> {
final formKey = GlobalKey<FormState>();
final villeController = TextEditingController();
final nameController = TextEditingController();
final imageController = TextEditingController();
final priceController = TextEditingController();

void onPressed(){
  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  CustomFormField(controller: villeController, keyboard: TextInputType.text, label: "Ville", hintText: "Entrer le nom de la ville"),
                  CustomFormField(controller: nameController, keyboard: TextInputType.text, label: "Nom", hintText: "Entrer le nom de l'hôtel"),
                  CustomFormField(controller: priceController, keyboard: TextInputType.number, label: "Price", hintText: "Entrer le prix",),
                  SizedBox(height: 15),
                  CustomButton(onPressed: onPressed),
               ],
              ),
            )
          ]
        )

      )


    );
  }
}

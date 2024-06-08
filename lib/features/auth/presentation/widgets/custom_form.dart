import 'package:dalel1/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Form(
          child: Column(
        children: [
          CustomTextFormField(labelText: "name"),
          SizedBox(height: 24),
          CustomTextFormField(labelText: "last name"),
          SizedBox(height: 24),
          CustomTextFormField(labelText: "email"),
          SizedBox(height: 24),
          CustomTextFormField(labelText: "password"),
        ],
      )),
    );
  }
}

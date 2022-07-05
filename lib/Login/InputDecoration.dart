import 'package:flutter/material.dart';

class Inputdecoration{
  inputdecoration({required String hint,required Function password}){
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
        suffixIcon: password(),

      hintText: hint,
      hintStyle: const TextStyle(fontSize: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide:  BorderSide(
          color: Colors.pinkAccent.withOpacity(0.2),
          width: 1.0,
        ),
      ),

    );
  }
}
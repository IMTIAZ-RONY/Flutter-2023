import 'package:flutter/material.dart';

Widget customFormField(
    controller,
    keyboardtype,
    hinttext,
    context,
    validator, {
      bool obscureText = false,
      labelText,
      suffixIcon,
      prefixIcon,
      prefixStyle,
      readOnly = false,
    }) {
  return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
          keyboardType: keyboardtype,
          readOnly: readOnly,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          controller: controller,
          obscureText: obscureText,
          //textInputAction: TextInputAction.next,
          validator: validator,
          maxLines: 1,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 20, 15),
            suffixIcon: suffixIcon,
            prefix: prefixIcon,
            prefixStyle: prefixStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          ),
      );
}
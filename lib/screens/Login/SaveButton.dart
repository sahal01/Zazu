import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../styles/Styles.dart';

class SaveButton{
  save({required Function validate,required double w})
  {
      return SizedBox(width: w,
        child: FlatButton(
            color: primary1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Text(
              'LOGIN',
              style: Styles().normalS(
                  fontW: FontWeight.normal,
                  fontS: 15,
                  color: black),
            ),
            onPressed: () {
              validate();
            }),
      );

  }
}
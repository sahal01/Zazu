import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/Styles.dart';
import '../../utils/colors.dart';

class SaveButton {
  save({required Function validate, required double w}) {
    return SizedBox(
      width: w,
      child: FlatButton(
          color: AppColors.primary1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: Text(
            'LOGIN',
            style: Styles().normalS(
                fontW: FontWeight.normal, fontS: 15, color: AppColors.black),
          ),
          onPressed: () {
            validate();
          }),
    );
  }
}

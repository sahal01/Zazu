import 'package:flutter/material.dart';

import '../../utils/Styles.dart';
import '../../utils/colors.dart';

class Button {
  button({required Function action, required String txt}) {
    return FlatButton(
        color: AppColors.primary1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          txt,
          style: Styles().normalS(
              fontW: FontWeight.normal, fontS: 15, color: AppColors.black),
        ),
        onPressed: () {
          action();
        });
  }
}

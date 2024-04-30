// criado após a instalaçã do package 'loading_animation_widget', aparece para mostrar que o sistema não esta travado mais sim rebutando

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prefeitura/app/core/ui/extensions/size_screen_extension.dart';
import 'package:prefeitura/app/core/ui/ui_config.dart';

mixin Loader<T extends StatefulWidget> on State<T> {
  var isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return LoadingAnimationWidget.inkDrop(
              color: UiConfig.primaryColor,
              size: 15.w,
            );
          });
    }
  }

  void hideLoader() {
    if (isOpen) {
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  @override
  void dispose() {
    hideLoader();
    super.dispose();
  }
}

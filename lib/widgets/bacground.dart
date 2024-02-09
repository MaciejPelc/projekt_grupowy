import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projekt_grupowy/auth_components/utlis/animations.dart';
import 'package:projekt_grupowy/auth_components/utlis/bg_data.dart';
import 'package:projekt_grupowy/auth_components/utlis/text_utils.dart';
import 'package:projekt_grupowy/bloc/auth_bloc/auth_bloc.dart';
import 'package:projekt_grupowy/helpers/regexp_helper.dart';
import 'package:projekt_grupowy/models/post_login_model.dart';

class Background extends StatefulWidget {
  const Background({
    super.key,
    required this.content,
  });
  final Widget content;

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(bgList[selectedIndex]), fit: BoxFit.fill),
      ),
      alignment: Alignment.center,
      child: widget.content,
    );
  }
}

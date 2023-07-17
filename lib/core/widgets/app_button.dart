import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget text;
  final bool isRounded;
  final MaterialStateProperty<Color?>? color;

  const AppButton({
    Key? key,
    this.onPressed,
    required this.text,
    required this.isRounded, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(isRounded ? 10.0 : 0),
            ),
          ),
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}

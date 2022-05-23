import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final Color? bgColor;
  final Widget? child;
  final bool? isShadow;
  final double? marginHeight;
  final double? marginWidth;
  final double? paddingHeight;
  final double? paddingWidth;
  final Color? shadowColor;

  const CustomContainer(
      {Key? key,
        this.height,
        this.width,
        this.radius,
        this.bgColor,
        this.child,
        this.isShadow,
        this.marginHeight,
        this.shadowColor,
        this.marginWidth,
        this.paddingHeight,
        this.paddingWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: marginWidth ?? 0, vertical: marginHeight ?? 0),
      padding: EdgeInsets.symmetric(
          horizontal: paddingWidth ?? 0, vertical: paddingHeight ?? 0),
      child: child ?? const SizedBox(),
      decoration: BoxDecoration(
          color: bgColor ?? Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(radius ?? 0),
          boxShadow: <BoxShadow>[
            isShadow == true
                ? BoxShadow(
                blurRadius: 2,
                spreadRadius: 2,
                offset: const Offset(2, 2),
                color: Theme.of(context).hintColor.withOpacity(0.4))
                : BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.0)),
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodySmallLexendTera =>
      theme.textTheme.bodySmall!.lexendTera.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallMali => theme.textTheme.bodySmall!.mali.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallMaliLight => theme.textTheme.bodySmall!.mali.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallMaliRegular => theme.textTheme.bodySmall!.mali.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallRedA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA70001,
      );
  // Display text style
  static get displaySmallOnPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInterErrorContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInterIndigo500 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.indigo500,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInterRed70002 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.red70002,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInterRegular =>
      theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeLexendTera =>
      theme.textTheme.titleLarge!.lexendTera.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeLigconsolata =>
      theme.textTheme.titleLarge!.ligconsolata.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get koulen {
    return copyWith(
      fontFamily: 'Koulen',
    );
  }

  TextStyle get mali {
    return copyWith(
      fontFamily: 'Mali',
    );
  }

  TextStyle get lexendPeta {
    return copyWith(
      fontFamily: 'Lexend Peta',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get lexendTera {
    return copyWith(
      fontFamily: 'Lexend Tera',
    );
  }

  TextStyle get ligconsolata {
    return copyWith(
      fontFamily: 'Ligconsolata',
    );
  }
}

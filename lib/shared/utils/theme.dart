import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterui/shared/utils/colors.dart';
import 'package:flutterui/shared/utils/sizing.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      color: AppColors.TEXTBLACK,
      fontWeight: FontWeight.w800,
      fontSize: 30.sp,
    ),
    displayMedium: GoogleFonts.poppins(
      color: AppColors.TEXTBLACK,
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
    ),
    displaySmall: GoogleFonts.poppins(
      color: AppColors.TEXTBLACK,
      fontWeight: FontWeight.w600,
      fontSize: 12.sp,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: AppColors.TEXTBLACK,
      fontSize: 14.sp,
      height: 1.2,
      letterSpacing: 0.1,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: GoogleFonts.poppins(
      color: AppColors.TEXTBLACK,
      fontWeight: FontWeight.w400,
      fontSize: 12.sp,
    ),
    labelMedium: GoogleFonts.poppins(
      color: AppColors.TEXTGREY,
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
    ),
    labelSmall: GoogleFonts.poppins(
      color: AppColors.TEXTGREY,
      fontWeight: FontWeight.w400,
      fontSize: 12.sp,
      letterSpacing: 0,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      color: AppColors.TEXTWHITE,
      fontWeight: FontWeight.w800,
      fontSize: 30.sp,
    ),
    displayMedium: GoogleFonts.poppins(
      color: AppColors.TEXTWHITE,
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
    ),
    displaySmall: GoogleFonts.poppins(
      color: AppColors.TEXTWHITE,
      fontWeight: FontWeight.w600,
      fontSize: 12.sp,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: AppColors.TEXTWHITE,
      fontWeight: FontWeight.normal,
      fontSize: 14.sp,
      height: 1.2,
      letterSpacing: 0.1,
    ),
    bodySmall: GoogleFonts.poppins(
      color: AppColors.TEXTWHITE,
      fontWeight: FontWeight.w400,
      fontSize: 12.sp,
    ),
    labelMedium: GoogleFonts.poppins(
      color: AppColors.TEXTGREY,
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
    ),
    labelSmall: GoogleFonts.poppins(
      color: AppColors.TEXTGREY,
      fontWeight: FontWeight.w400,
      fontSize: 12.sp,
      letterSpacing: 0,
    ),
  );

  static InputDecorationTheme lightInputDecoration = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
    labelStyle: TextStyle(color: AppColors.TEXTGREY, fontSize: 16.sp, fontWeight: FontWeight.w400),
    hintStyle: TextStyle(color: AppColors.TEXTGREY, fontSize: 16.sp, fontWeight: FontWeight.w400),
    floatingLabelStyle: TextStyle(color: AppColors.TEXTGREY, fontSize: 12.sp),
    errorStyle: TextStyle(color: AppColors.RED, fontSize: 11.sp),
    border: AppSizing.mainBorder(AppColors.BGGRAY),
    enabledBorder: AppSizing.mainBorder(AppColors.BGGRAY),
    focusedBorder: AppSizing.mainFocusBorder(),
    focusedErrorBorder: AppSizing.focusedErrorBorder(),
    errorBorder: AppSizing.errorBorder(),
  );

  static InputDecorationTheme darkInputDecoration = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
    labelStyle: TextStyle(color: AppColors.TEXTGREY, fontSize: 16.sp, fontWeight: FontWeight.w400),
    hintStyle: TextStyle(color: AppColors.TEXTGREY, fontSize: 16.sp, fontWeight: FontWeight.w400),
    floatingLabelStyle: TextStyle(color: AppColors.TEXTGREY, fontSize: 12.sp),
    errorStyle: TextStyle(color: AppColors.RED, fontSize: 11.sp),
    border: AppSizing.mainBorder(AppColors.BGGRAY3),
    enabledBorder: AppSizing.mainBorder(AppColors.BGGRAY3),
    focusedBorder: AppSizing.mainFocusBorder(),
    errorBorder: AppSizing.errorBorder(),
    focusedErrorBorder: AppSizing.focusedErrorBorder(),
  );

  static ThemeData light() {
    return ThemeData(
      colorScheme: const ColorScheme.light(primary: AppColors.PRIMARY, error: AppColors.RED),
      primaryColor: AppColors.PRIMARY,
      primaryColorDark: AppColors.TEXTBLACK,
      primaryColorLight: AppColors.TEXTWHITE,
      scaffoldBackgroundColor: AppColors.BG,
      cardTheme: const CardTheme(color: AppColors.CARDCOLOR),
      highlightColor: AppColors.BGGRAY,
      cardColor: AppColors.CARDCOLOR,
      textTheme: lightTextTheme,
      inputDecorationTheme: lightInputDecoration,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.BG,
        titleTextStyle: GoogleFonts.poppins(color: AppColors.TEXTBLACK, fontWeight: FontWeight.w500, fontSize: 20.sp),
        elevation: 0,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.TEXTWHITE,
        side: const BorderSide(color: AppColors.BGGRAY2, width: 1),
        selectedColor: AppColors.PRIMARY,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
        labelStyle: TextStyle(fontSize: 12.sp, color: AppColors.TEXTBLACK),
      ),
      dividerTheme: DividerThemeData(color: AppColors.BGGRAY2),
      dialogTheme: DialogTheme(backgroundColor: AppColors.CARDCOLOR),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      primaryColor: AppColors.PRIMARY,
      scaffoldBackgroundColor: AppColors.BGDARK,
      primaryColorDark: AppColors.TEXTWHITE,
      primaryColorLight: AppColors.TEXTBLACK,
      cardColor: AppColors.BGCARDDARK,
      colorScheme: const ColorScheme.dark(primary: AppColors.PRIMARY, error: AppColors.RED),
      cardTheme: const CardTheme(color: AppColors.BGCARDDARK),
      textTheme: darkTextTheme,
      highlightColor: AppColors.BGGRAY3,
      inputDecorationTheme: darkInputDecoration,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.BGDARK,
        titleTextStyle: GoogleFonts.poppins(
          color: AppColors.TEXTWHITE,
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
        elevation: 20,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.BGCARDDARK,
        side: const BorderSide(color: AppColors.BGCARDDARK, width: 1),
        selectedColor: AppColors.PRIMARY,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
        labelStyle: TextStyle(fontSize: 12.sp, color: AppColors.TEXTWHITE),
      ),
      dividerTheme: DividerThemeData(color: AppColors.BGGRAY2),
      dialogTheme: DialogTheme(backgroundColor: AppColors.BGCARDDARK),
    );
  }
}

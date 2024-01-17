import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray10001,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 72.adaptSize,
                    width: 72.adaptSize,
                  ),
                  SizedBox(height: 16.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFreudAi,
                    height: 31.v,
                    width: 123.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

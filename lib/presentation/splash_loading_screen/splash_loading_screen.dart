import 'bloc/splash_loading_bloc.dart';
import 'models/splash_loading_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';

class SplashLoadingScreen extends StatelessWidget {
  const SplashLoadingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashLoadingBloc>(
      create: (context) => SplashLoadingBloc(SplashLoadingState(
        splashLoadingModelObj: SplashLoadingModel(),
      ))
        ..add(SplashLoadingInitialEvent()),
      child: SplashLoadingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashLoadingBloc, SplashLoadingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Container(
                height: SizeUtils.height,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 46.v),
                decoration: AppDecoration.fillGray90003,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLogomark,
                      height: 720.v,
                      width: 375.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_992".tr,
                              style: CustomTextStyles.headlineLargeffffffffBold,
                            ),
                            TextSpan(
                              text: "lbl".tr,
                              style: CustomTextStyles.headlineLargeffbfa090,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'bloc/loading_screen_interactive_bloc.dart';
import 'models/loading_screen_interactive_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';

class LoadingScreenInteractiveScreen extends StatelessWidget {
  const LoadingScreenInteractiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoadingScreenInteractiveBloc>(
      create: (context) =>
          LoadingScreenInteractiveBloc(LoadingScreenInteractiveState(
        loadingScreenInteractiveModelObj: LoadingScreenInteractiveModel(),
      ))
            ..add(LoadingScreenInteractiveInitialEvent()),
      child: LoadingScreenInteractiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingScreenInteractiveBloc,
        LoadingScreenInteractiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.lightGreen400,
            body: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  _buildOneSection(context),
                  Opacity(
                    opacity: 0.64,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 180.adaptSize,
                        width: 180.adaptSize,
                        margin: EdgeInsets.only(bottom: 236.v),
                        decoration: BoxDecoration(
                          color: appTheme.lightGreen700.withOpacity(0.58),
                          borderRadius: BorderRadius.circular(
                            90.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.48,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 285.adaptSize,
                        width: 285.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.lightGreen700.withOpacity(0.52),
                          borderRadius: BorderRadius.circular(
                            142.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 64.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "msg_fetching_data".tr,
                            style: CustomTextStyles.displaySmallWhiteA70001,
                          ),
                          SizedBox(height: 12.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "msg_shake_screen_to".tr,
                                    style:
                                        CustomTextStyles.titleMediumSemiBold_1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOneSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 39.v),
        padding: EdgeInsets.symmetric(vertical: 18.v),
        decoration: AppDecoration.fillLightGreen.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder187,
        ),
        child: Opacity(
          opacity: 0.64,
          child: Container(
            height: 54.adaptSize,
            width: 54.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.lightGreen700.withOpacity(0.58),
              borderRadius: BorderRadius.circular(
                27.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

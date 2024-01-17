import 'bloc/loading_screen_quote_bloc.dart';
import 'models/loading_screen_quote_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';

class LoadingScreenQuoteScreen extends StatelessWidget {
  const LoadingScreenQuoteScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoadingScreenQuoteBloc>(
      create: (context) => LoadingScreenQuoteBloc(LoadingScreenQuoteState(
        loadingScreenQuoteModelObj: LoadingScreenQuoteModel(),
      ))
        ..add(LoadingScreenQuoteInitialEvent()),
      child: LoadingScreenQuoteScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingScreenQuoteBloc, LoadingScreenQuoteState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.yellow90001,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCloseWhiteA70001,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                  ),
                  SizedBox(height: 62.v),
                  Container(
                    width: 314.h,
                    margin: EdgeInsets.only(right: 26.h),
                    child: Text(
                      "msg_in_the_midst_of".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.displaySmallWhiteA70001_1.copyWith(
                        height: 1.22,
                      ),
                    ),
                  ),
                  SizedBox(height: 63.v),
                  Text(
                    "lbl_albert_camus".tr.toUpperCase(),
                    style: CustomTextStyles.titleSmall_1,
                  ),
                  SizedBox(height: 1.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

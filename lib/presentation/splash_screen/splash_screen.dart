import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:devsaci_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

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
            backgroundColor: theme.colorScheme.primary.withOpacity(1),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgLogo,
                    height: 72.adaptSize,
                    width: 72.adaptSize,
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

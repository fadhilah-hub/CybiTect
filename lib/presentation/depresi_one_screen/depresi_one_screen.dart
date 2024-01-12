import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_icon_button.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class DepresiOneScreen extends StatelessWidget {
  DepresiOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController talkingtoacounselorController = TextEditingController();

  TextEditingController talkingtothecommunityController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1.14, 1.13),
              end: Alignment(-0.07, -0.08),
              colors: [
                appTheme.gray50002,
                appTheme.lightGreen50,
                appTheme.gray300,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 52.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    right: 85.h,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 61.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "Penyembuhan depresi",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 49.v),
                Container(
                  width: 380.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Berolahraga\n",
                          style: CustomTextStyles.titleMediumff404929,
                        ),
                        TextSpan(
                          text:
                              "Olahraga secara rutin membuat anda merasa lebih baik dan mendorong anda untuk berpikir positif.\n\n",
                          style: CustomTextStyles.bodyLargeff404929,
                        ),
                        TextSpan(
                          text: "Memiliki buku harian atau diary\n",
                          style: CustomTextStyles.titleMediumff404929,
                        ),
                        TextSpan(
                          text:
                              "Menulis buku harian dapat membantu anda meluapkan hal-hal negatif yang anda rasakan sehingga akan merasa lebih baik dan dapat merasakan bahwa masih ada hal positif lainnya yang pernah dialami.\n\n",
                          style: CustomTextStyles.bodyLargeff404929,
                        ),
                        TextSpan(
                          text: "Tidur cukup\n",
                          style: CustomTextStyles.titleMediumff404929,
                        ),
                        TextSpan(
                          text:
                              "Berisitirahat dan tidur yang cukup mampu membuat diri merasa lebih baik dan dapat berpikir dengan jernih kedepannya sehingga anda akan pulih secara perlahan.\n\n",
                          style: CustomTextStyles.bodyLargeff404929,
                        ),
                        TextSpan(
                          text: "Meditasi\n",
                          style: CustomTextStyles.titleMediumff404929,
                        ),
                        TextSpan(
                          text:
                              "Meditasi akan memberikan sensasi ketenangan yang mampu mengatasi stres dan depresi yang anda alami. Anda juga bisa melakukan meditasi bersama psikiater dan ahli psikologi lainnya.\n\n",
                          style: CustomTextStyles.bodyLargeff404929,
                        ),
                        TextSpan(
                          text:
                              "Memiliki teman cerita\nMemiliki teman bercerita entah itu keluarga atau sahabat akan membuat perasaan dan hati lebih lega. Anda juga dapat meminta saran dan bantuan dari mereka terhadap permasalahan yang anda hadapi.\n\n\n",
                          style: CustomTextStyles.titleMediumff404929,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 17.v),
                _buildDepresiOneTwenty(context),
                SizedBox(height: 17.v),
                _buildDepresiOneTalkingtoacounselor(context),
                SizedBox(height: 11.v),
                _buildDepresiOneTalkingtothecommunity(context),
                SizedBox(height: 4.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepresiOneTwenty(BuildContext context) {
    return Container(
      width: 380.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        width: 334.h,
        margin: EdgeInsets.only(right: 10.h),
        child: Text(
          "Jangan pernah merasa takut untuk bercerita kepada orang-orang terdekat anda dan jangan pernah merasa bahwa anda adalah pelaku dan permasalahan anda bukan sesuatu yang perlu dianggap serius. Orang terdekat yang anda percaya sangat terbuka dan menanti anda untuk bercerita kepada mereka.",
          maxLines: 7,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.justify,
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepresiOneTalkingtoacounselor(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 29.h),
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: talkingtoacounselorController,
              hintText: "Bicara dengan konselor",
              hintStyle: theme.textTheme.bodyLarge!,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 13.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
              fillColor: appTheme.orange100,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgSettingsYellow2000136x36,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepresiOneTalkingtothecommunity(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 29.h),
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: talkingtothecommunityController,
              hintText: "Bicara dengan komunitas",
              hintStyle: theme.textTheme.bodyLarge!,
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 13.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
              fillColor: appTheme.orange100,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgSettingsYellow2000124x24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

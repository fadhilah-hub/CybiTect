import 'package:cybitect0/core/app_export.dart';
import 'package:flutter/material.dart';

class DepresiScreen extends StatelessWidget {
  const DepresiScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 50.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDepressionScreen(context),
                          SizedBox(height: 49.v),
                          SizedBox(
                            width: 380.h,
                            child: Text(
                              "Depresi bagi orang awam diartikan sebagai keadaan   emosi   atau   perasaan   sedih,   susah,   murung, ataupun tidak bahagia dan kehilangan semangat   untuk   hidup.   Dalam   pengertian   ilmiah, depresi diartikan sebagai suatu keadaan emosi  yang  mempunyai  karakteristik  seperti  perasaan   sedih,   perasaan   gagal   dan   tidak   berharga,  dan  menarik  diri  dari  orang  lain  ataupun  lingkungan.\n\nDepresi dinilai sebagai suatu penyakit mental yang seringkali tidak disadari oleh penderitanya sehingga penanganan akan depresi terlambat dilakukan dan berujung semakin parah. Bukan hanya penderita, orang-orang sekitar juga seringkali tidak sadar bahwa orang terdekatnya sedang mengalami depresi.",
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 36.v),
                          Text(
                            "Tanda-tanda depresi",
                            style: CustomTextStyles.titleMediumMedium,
                          ),
                          SizedBox(height: 7.v),
                          Container(
                            width: 373.h,
                            margin: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Hilangnya energi dan minat untuk melakukan sesuatu.\nPerasaan bersalah yang mendalam.\nKesulitan untuk berkonsentrasi.\nHilangnya nafsu makan.\nMuncul pikiran tentang kematian atau keinginan untuk bunuh diri.\nMemiliki gangguan tidur.\nKepasifan seperti tiduran selama berjam-jam.\nGangguan aktivitas seksual.",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 36.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "Faktor penyebab depresi",
                              style: CustomTextStyles.titleMediumMedium,
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Container(
                            width: 373.h,
                            margin: EdgeInsets.only(left: 6.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Overgeneralization,",
                                    style: CustomTextStyles.bodyLargeff404929
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " yaitu percaya bahwa jika  hasil  negatif  terjadi  dalam  suatu  kejadian   maka   hasil   negatif   tersebut   juga  akan  terjadi  pada  kejadian  yang  sama bahkan untuk kejadian yang belum terjadi.\n\n",
                                    style: CustomTextStyles.bodyLargeff404929,
                                  ),
                                  TextSpan(
                                    text: "Selective abstraction,",
                                    style: CustomTextStyles.bodyLargeff404929
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " yaitu mengarahkan pemikiran   hanya   pada   hal-hal   yang   negatif.\n\n",
                                    style: CustomTextStyles.bodyLargeff404929,
                                  ),
                                  TextSpan(
                                    text:
                                        "Assumsing  exsessive  responsibility",
                                    style: CustomTextStyles.bodyLargeff404929
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "  atau personal  causalitas  yaitu  menyalahkan  diri   sendiri   sebagai   penyebab   semua   kegagalan atau suatu kejadian negatif.\n\n",
                                    style: CustomTextStyles.bodyLargeff404929,
                                  ),
                                  TextSpan(
                                    text:
                                        "Castratrophizing, yaitu  selalu  berfikir tentang hal-hal buruk yang akan terjadi.\n",
                                    style: CustomTextStyles.bodyLargeff404929
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepressionScreen(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Text(
                    "Apa itu depresi?",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSettingsGray80003,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 87.h,
            bottom: 3.v,
          ),
        ),
      ],
    );
  }
}

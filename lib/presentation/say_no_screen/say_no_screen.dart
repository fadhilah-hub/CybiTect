import 'package:cybitect0/core/app_export.dart';
import 'package:flutter/material.dart';

class SayNoScreen extends StatelessWidget {
  const SayNoScreen({Key? key})
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
                SizedBox(height: 48.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 77.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(top: 4.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 52.h),
                                  child: Text(
                                    "Say no to cyberbullying",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 49.v),
                          SizedBox(
                            width: 380.h,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "Cyberbullying merupakan istilah yang merujuk pada perilaku sosial bullying yang terjadi secara online  seperti  agresi online,  pelecehan, dan  agresi  penyerangan  terhadap  individu  secara elektronik. Cyberbullying  mengacu pada bullying yang terjadi melalui instant messaging, email, chat, website, video    game, atau   melalui  gambaran  pesan   yang   dikirim melalui smartphone atau perangkat lain seperti PC.\n\nFaktor-faktor penyebab bullying  antara lain:  keluarga,  sekolah dan kelompok teman sebaya. Selain itu,  perilaku cyberbullying juga bisa bermotif dendam, rasa marah atau perasaan frustasi. Bisa juga karena pelaku kekerasan bullying memang  tidak  mempunyai  kegiatan positif, sedangkan berbagai fasilitas teknologi banyak tersedia dan dengan mudah diakses, sehingga  menyebabkan perilaku yang tidak berguna. Atau bisa jadi, pelaku adalah orang-orang yang di kehidupan  nyata termasuk golongan tidak dianggap’ atau  sebagai korban bullying itu sendiri. Dengan melakukan cyberbullying, mereka melampiaskan dendam dan kemarahan mereka.\n\nCyberbullying memiliki efek negatif yang besar karena korban dapat dilakukan di manapun mereka berada. Pelaku cyberbullying akan menggunakan nama   anonim dalam  meneror  korban  di  kehidupan  pribadi mereka. Para pelaku tidak melihat efek negatif yang  menjadi penyebabnya, akan tetapi efek akan terlihat  secara psikologis dan sosial di dunia nyata.\n\n\n",
                                    style: CustomTextStyles.bodyLargeff404929,
                                  ),
                                  TextSpan(
                                    text:
                                        "Dampak cyberbullying\nKorban takut akan keselamatannya dan  terdapat potensi  pada  gangguan  hubungan mereka  dengan  masyarakat  sosial  lingkungan-nya  sehingga  mereka  secara  signifikan  akan mengakhiri  hubungan  dengan  lainnya. cyberbullying menjadi sebuah ancaman yang  jauh  lebih  berbahaya  daripada  yang  banyak orang tua perkirakan. Beberapa dampak cyberbullying pada pelajar ialah sebagai berikut:\nJatuh mental karena dipermalukan.\nMengalami stress dan depresi berkepanjangan.\nKehilangan rasa percaya diri.\nMenjadi paranoid.\nBerpotensi menjadi pelaku cyberbullying.\nMengalami gangguan kesehatan.\nPrestasi menurun.\nMelakukan tindakan kriminal.\nBerperilaku agresif,\nMenjadi pribadi yang rapuh.\nKecewa dengan diri sendiri.\nKehilangan minat hidup.\nMerasa terisolasi.\nBunuh diri.\n\n\nCyberbullying adalah tindakan yang tidak sepantasnya untuk dilakukan. Seringkali orang-orang menganggap bahwa cyberbullying adalah permasalahan yang sepele padahal dampaknya sangat berbahaya bagi korban. Korban bisa merasakan perasaan bersalah selama hidupnya bahkan berujung mengakhiri hidupnya. Korban bahkan juga bisa menjadi pelaku cyberbullying demi membalaskan dendamnya. Apabila hal tersebut terjadi, maka tindakan cyberbullying tidak akan pernah berhenti dan akan terus dilakukan.\n\nDalam pengurangan dan pencegahan tindakan cyberbullying harus dimulai dari diri kita sendiri. Mulailah untuk peduli dan peka akan teman dan lingkungan sekitar. Saling membantu teman dan orang terdekat yang mempunyai masalah akan membuat mereka merasa bahwa mereka tidak sendirian.\n",
                                    style:
                                        CustomTextStyles.titleMediumff404929_1,
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
}

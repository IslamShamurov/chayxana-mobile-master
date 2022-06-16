import 'dart:io';

import 'package:chayxana/pages/main/profile/profile_controller.dart';
import 'package:chayxana/services/constants/app_assets.dart';
import 'package:chayxana/services/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../views/profile_list.dart';

class ProfilePage extends StatelessWidget {
  static const String id = "/profile_page";

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.backgroundColor,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///image
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.activeColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: Get.height / 2.58,
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height / 7.46,
                        ),
                        Center(
                          child: Container(
                            width: Get.width / 3.76,
                            height: Get.height / 8.14,
                            decoration: const BoxDecoration(



                              image: DecorationImage(
                             invertColors: true,
                              image: AssetImage(AppAssets.addPhotoIC,),

                            ),),
                            child: InkWell(
                              onTap: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height / 14.9,
                        ),

                        const Text(
                          "Абдуллох",
                          style: TextStyle(
                            color: AppColors.unSelectedTextColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 26,
                            fontFamily: "Poppins",
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  /// first three button
                  Container(
                    height: 150,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.activeColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        ///location
                        InkWell(
                            onTap: () {},
                            child: PersonalInformation(
                              onPressed: () {},
                              whatInfo: "Город",
                              image: AppAssets.icLocation,
                              additional: "Ташкент",
                            )),
                        const Divider(
                          height: 1,
                          color: AppColors.unSelectedTextColor,
                        ),

                        ///personal information
                        InkWell(
                          onTap: () {},
                          child: PersonalInformation(
                            onPressed: () {},
                            whatInfo: "Личная информация",
                            image: AppAssets.icEdit,
                            additional: "",
                          ),
                        ),
                        const Divider(
                            height: 1, color: AppColors.unSelectedTextColor),

                        ///card
                        InkWell(
                          onTap: () {},
                          child: PersonalInformation(
                            onPressed: () {},
                            whatInfo: "Банковская карта",
                            image: AppAssets.icBankCard,
                            additional: "",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  //second two button
                  Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.activeColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        /// help center
                        InkWell(
                          child: PersonalInformation(
                            onPressed: () {

                            },
                            whatInfo: "Чат с поддержкой",
                            image: AppAssets.icSupport,
                            additional: "",
                          ),
                        ),
                        const Divider(
                            height: 1, color: AppColors.unSelectedTextColor),

                        /// question and answer
                        InkWell(
                          onTap: () {},
                          focusColor: Colors.grey,
                          child: PersonalInformation(
                            onPressed: () {
                              controller.openDialog();
                            },
                            whatInfo: "Вопросы и ответы",
                            image: AppAssets.icQuestions,
                            additional: "",
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),

                  ///third one button
                  Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.activeColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        /// leave
                        InkWell(
                          onTap: () {},
                          child: PersonalInformation(
                            onPressed: () {
                              if(Platform.isAndroid){
                                return controller.openAndroidDialog();
                              }else{
                                return controller.openIOSDialog();
                              }

                            },
                            whatInfo: "Выйти",
                            image: AppAssets.icExit,
                            additional: "",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
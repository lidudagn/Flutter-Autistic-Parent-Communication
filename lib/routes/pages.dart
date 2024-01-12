import 'package:autism_project/modules/healthPro/healthpro.dart';
import 'package:autism_project/modules/healthPro/healthpro_binding.dart';
import 'package:autism_project/modules/organizationacc/organization.dart';
import 'package:autism_project/modules/organizationacc/organization_binding.dart';
import 'package:autism_project/modules/view_profile/profile_binding.dart';
import 'package:autism_project/modules/view_profile/view_profile.dart';

import '../utils/import.dart';
import 'package:autism_project/modules/detail_chat/detail_binding.dart';
import 'package:autism_project/modules/detail_chat/detail.dart';
import 'package:autism_project/modules/comment/comment_binding.dart';
import 'package:autism_project/modules/comment/comment.dart';
import 'package:autism_project/modules/signUp/signup.dart';
import 'package:autism_project/modules/signUp/signup_binding.dart';
import 'package:autism_project/modules/familyacc/familyacc_binding.dart';
import 'package:autism_project/modules/familyacc/familyacc.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.chat, page: () => chat(), binding: chat_binding()),
    GetPage(
        name: AppRoutes.healthpro,
        page: () => healthpro(),
        binding: healthpro_binding()),
    GetPage(
        name: AppRoutes.familyacc,
        page: () => familyacc(),
        binding: familyacc_binding()),
    GetPage(
        name: AppRoutes.organizationInfo,
        page: () => organizationInfo(),
        binding: organization_binding()),
    GetPage(
        name: AppRoutes.signup,
        page: () => signup(),
        binding: signup_Binding()),
    GetPage(
        name: AppRoutes.profile,
        page: () => viewProfile(),
        binding: profile_Binding()),
    GetPage(
        name: AppRoutes.detailChat,
        page: () => detail(),
        binding: detail_binding()),
    GetPage(
        name: AppRoutes.comment,
        page: () => comment(),
        binding: comment_binding()),
    GetPage(
        name: AppRoutes.signin,
        page: () => signin(),
        binding: signin_Binding()),
    GetPage(
        name: AppRoutes.createAccount,
        page: () => CreateAccountPage(),
        binding: CreateAccountBinding()),
    GetPage(
        name: AppRoutes.symptom,
        page: () => const symptom(),
        binding: symptom_Bindings()),
    GetPage(
        name: AppRoutes.doctor,
        page: () => const doctor(),
        binding: doctor_binding()),
    GetPage(
        name: AppRoutes.foodRecommandation,
        page: () => foodRecommandation(),
        binding: food_binding()),
    GetPage(
        name: AppRoutes.aboutAutism,
        page: () => const aboutAutsim(),
        binding: aboutAutism_binding()),
    GetPage(
        name: AppRoutes.awareness,
        page: () => const awareness(),
        binding: awareness_binding()),
    GetPage(
        name: AppRoutes.firstpage,
        page: () => const firstPage(),
        binding: firstPage_binding()),
    GetPage(
        name: AppRoutes.recommendedUser,
        page: () => const RecommendedUserPage(),
        binding: RecommendedUserBindings()),
    GetPage(
        name: AppRoutes.home,
        page: () => const homePage(),
        binding: HomeBinding()),
    GetPage(
        name: AppRoutes.post, page: () => const post(), binding: PostBinding()),
    GetPage(
        name: AppRoutes.notification,
        page: () => notification(),
        binding: NotificationBindings()),
    GetPage(
        name: AppRoutes.profilePicture,
        page: () => profilePicture(),
        binding: ProfilePictureBinding()),
  ];
}

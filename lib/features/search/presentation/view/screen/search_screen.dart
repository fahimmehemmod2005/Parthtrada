import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/core/constant/route_name.dart';
import 'package:parthtrada/features/search/presentation/view/widgets/search_input_field.dart';
import '../../../../../app/widgets/containertext/container_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      // --------------------- title -----------------------
                      Text(
                        'Find Experts',
                        style: AppTextStyles.title32_800w(color: Colors.white),
                      ),

                      // --------------------- subtitle -----------------------
                      Text(
                        'Connect with Professionals',
                        style: AppTextStyles.title16_400w(
                          color: Color(0xff777980),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),

                  // --------------------- notification button -----------------------
                  SvgPicture.asset(AppImages.noti),
                ],
              ),

              SizedBox(height: 24.h),

              Row(
                children: [
                  // ---------------------- TextFormField -----------------
                  Expanded(
                    child: SearchInputField(
                      hintText: 'Type expert name',
                      imagePath: AppImages.search,
                      maxLine: 1,
                    ),
                  ),

                  SizedBox(width: 8.w),

                  // --------------------- filter button ------------------------
                  GestureDetector(
                    onTap: () {
                      // ------------------- build showModalBottomSheet -----------------
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        builder: (context) {
                          return buildFilterSheet(
                            context,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // top bar
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Filter",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 28),
                                Row(
                                  children: [
                                    TextContainer(
                                      text: 'Machine Learning',
                                      width: 127,
                                    ),
                                    SizedBox(width: 10.w),
                                    TextContainer(
                                      text: 'System Design',
                                      width: 108,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    TextContainer(
                                      text: 'Data Science',
                                      width: 127,
                                    ),
                                    SizedBox(width: 10.w),
                                    TextContainer(
                                      text: 'Data Science',
                                      width: 108,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                TextContainer(
                                  text: 'Frontend Development',
                                  width: 180,
                                ),
                                SizedBox(height: 20),
                                TextContainer(
                                  text: 'Frontend Development',
                                  width: 180,
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },

                    child: SvgPicture.asset(AppImages.filter),
                  ),
                ],
              ),

              SizedBox(height: 24.h),

              Text(
                'Suggested Experts',
                style: AppTextStyles.title24_800w(color: Colors.white),
              ),

              SizedBox(height: 16.h),

              // ------------------ Suggested Experts Container --------------------
              Container(
                width: double.infinity,
                height: 276.h,
                decoration: BoxDecoration(
                  color: AppColor.containerColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 12.0,
                    right: 12.0,
                    top: 16.0,
                    bottom: 20.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset(AppImages.experts),
                      ),
                      SizedBox(width: 16.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sarah Chen',
                            style: AppTextStyles.title20_800w(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Senior Data Scientist at Google',
                            style: AppTextStyles.title16_400w(
                              color: Color(0xff777980),
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(AppImages.star),
                              SizedBox(width: 5.w),
                              RichText(
                                text: TextSpan(
                                  text: '4.9  ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '(127 reviews)',
                                      style: AppTextStyles.title16_400w(
                                        color: Color(0xff777980),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          TextContainer(text: 'Machine Learning', width: 129.w),
                          TextContainer(text: 'Data Science', width: 99.w),
                          Row(
                            children: [
                              SvgPicture.asset(AppImages.sched),
                              SizedBox(width: 5.w),
                              Text(
                                ' Available: Mon 2pm...',
                                style: AppTextStyles.title16_400w(
                                  color: Color(0xff777980),
                                ),
                              ),
                            ],
                          ),
                          PrimaryButton(
                            text: 'Book \$150/hour',
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.expertDetails,
                              );
                            },
                            width: 231,
                            height: 40,
                          ),
                        ],
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
  }
}
// ------------------- build showModalBottomSheet -----------------

Widget buildFilterSheet(BuildContext context, Widget anyWidget) {
  return Container(
    height: 700,
    width: double.infinity,
    padding: EdgeInsets.only(top: 32, right: 24, left: 24),
    decoration: BoxDecoration(
      color: Color(0xff191919),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
    ),
    child: anyWidget,
  );
}

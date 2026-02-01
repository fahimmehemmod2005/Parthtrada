import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/core/constant/route_name.dart';
import 'package:parthtrada/app/widgets/inputfield/search_input_field.dart';
import 'package:parthtrada/features/search/presentation/view/screen/mentor_stats_section.dart';
import 'package:parthtrada/features/search/presentation/view/widgets/brands_card.dart';
import '../widgets/expart_card.dart';
import '../widgets/people_rating_card.dart';
import 'filter_design.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Future<void> _refresh(){
    return Future.delayed(Duration(seconds: 3));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: RefreshIndicator(
          backgroundColor: AppColor.primaryColor,
          onRefresh: _refresh,
          color: Colors.white,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.notification);
                      },
                      child: SvgPicture.asset(AppImages.noti),
                    ),
                  ],
                ),

                SizedBox(height: 24.h),

                Row(
                  children: [
                    // ---------------------- TextFormField -----------------
                    Expanded(
                      child: SearchInputField(
                        height: 50,
                        hintText: 'Type expert name',
                        imagePath: AppImages.search,
                        maxLine: 1,
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
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
                            return buildFilterSheet(context, FilterDesign());
                          },
                        );
                      },
                      child: SvgPicture.asset(AppImages.filter),
                    ),
                  ],
                ),

                SizedBox(height: 24.h),

                Text(
                  'Featured Experts',
                  style: AppTextStyles.title24_800w(color: Colors.white),
                ),

                SizedBox(height: 16.h),

                ExpertCard(),

                SizedBox(height: 24.h),

                Text(
                  'What People Say',
                  style: AppTextStyles.title24_800w(color: Colors.white),
                ),

                SizedBox(height: 16.h),

                PeopleRatingCard(),
                SizedBox(height: 20.h),
                MentorStatsSection(),
                SizedBox(height: 20.h),
                BrandsCard(),
                SizedBox(height: 100.h),
              ],
            ),
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

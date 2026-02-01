import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/app/widgets/containertext/container_text.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/features/expert_details/presentation/view/screen/session_time.dart';
import 'package:parthtrada/app/widgets/inputfield/search_input_field.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';
import '../widgets/experience_container.dart';
import '../widgets/people_reviews.dart';

class ExpertDetails extends StatefulWidget {
  const ExpertDetails({super.key});

  @override
  State<ExpertDetails> createState() => _ExpertDetailsState();
}

class _ExpertDetailsState extends State<ExpertDetails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            SizedBox(height: 16.h),

            // ---------------- experts avatar -------------------
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 50.r,
                child: Image.asset(AppImages.experts),
              ),
            ),

            SizedBox(height: 30.h),

            // -------------- experts name and reviews star --------------------
            Row(
              children: [
                Text(
                  'Sarah Chen',
                  style: AppTextStyles.title24_800w(color: Colors.white),
                ),
                Spacer(),
                SvgPicture.asset(AppImages.star),
                Text(
                  ' 4.8',
                  style: AppTextStyles.title20_800w(color: Colors.white),
                ),
              ],
            ),

            // ----------------- text -----------------------
            Text(
              'Senior Data Scientist at Google',
              style: AppTextStyles.title12_600w(color: Color(0xff777980)),
            ),

            SizedBox(height: 8.h),

            // --------------- location ------------------
            Row(
              children: [
                SvgPicture.asset(AppImages.location),
                Text(
                  ' Olmstead Rd',
                  style: AppTextStyles.title12_600w(color: Color(0xff777980)),
                ),
              ],
            ),

            SizedBox(height: 15),

            // ----------------- Experience Status Container ---------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExperienceStatusContainer(
                  status: 'Student',
                  imagePath: AppImages.person,
                  number: ' 580+',
                ),
                ExperienceStatusContainer(
                  status: 'Experience',
                  imagePath: AppImages.check,
                  number: ' 4 yr+',
                ),
                ExperienceStatusContainer(
                  status: 'Reviews',
                  imagePath: AppImages.star,
                  number: ' 230+',
                ),
              ],
            ),

            SizedBox(height: 30.h),

            // -------------------- skills -------------------
            Text(
              'Skills',
              style: AppTextStyles.title20_800w(color: Colors.white),
            ),
            SizedBox(height: 14.h),
            Row(
              children: [
                TextContainer(text: '  Machine Learning  '),
                SizedBox(width: 10.w),
                TextContainer(text: '  Data Science  '),
              ],
            ),

            SizedBox(height: 30.h),

            // ----------------- Bio ----------------
            Text(
              'Professional Bio',
              style: AppTextStyles.title20_800w(color: Colors.white),
            ),

            SizedBox(height: 10.h),

            RichText(
              text: TextSpan(
                text:
                    'An experienced industry professional dedicated to helping students and early-career individuals with personalized career advice, skill-building, and growth strategies.... ',
                style: AppTextStyles.title16_400w(color: Color(0xff777980)),
                children: [
                  TextSpan(
                    text: ' Read More',
                    style: AppTextStyles.title16_400w(
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),

            // ----------------- Availability ----------------
            Text(
              'Availability',
              style: AppTextStyles.title20_800w(color: Colors.white),
            ),

            SizedBox(height: 10.h),

            Text(
              'Mon - Fri :  07.00 - 16.30,',
              style: AppTextStyles.title16_400w(color: Color(0xff777980)),
            ),

            SizedBox(height: 30.h),

            // ----------------- Reviews ----------------
            Text(
              'Reviews',
              style: AppTextStyles.title20_800w(color: Colors.white),
            ),

            SizedBox(height: 10.h),

            // ------------------ avatar side by side ----------------
            SizedBox(
              height: 38,
              child: Stack(
                children: [
                  _avatar(AppImages.user1, 0),
                  _avatar(AppImages.user2, 20),
                  _avatar(AppImages.user3, 40),
                  _avatar(AppImages.user4, 60),
                  _avatar(AppImages.user5, 80),
                  _avatar(AppImages.user6, 100),
                  _moreAvatar("15+", 120),
                ],
              ),
            ),

            // --------------- LinearProgressIndicator ----------
            Padding(padding: EdgeInsets.all(16), child: _ratingSummary()),

            // -------------- add review text button -------------
            GestureDetector(
              onTap: () {},
              child: Text(
                '+ Add Your Review',
                style: AppTextStyles.title16_400w(color: AppColor.primaryColor),
              ),
            ),

            SizedBox(height: 20),

            // ------------------- rate this title ---------------------
            Text(
              'Rate this',
              style: AppTextStyles.title20_800w(color: Colors.white),
            ),

            SizedBox(height: 3),

            // ------------------- rate this subtitle ---------------------
            Text(
              'Click according to your satisfaction.',
              style: AppTextStyles.title14_600w(color: Color(0xffA5A5AB)),
            ),

            SizedBox(height: 12.h),

            // ------------------ star review ------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStarReview(AppImages.starOutline, () {}),
                _buildStarReview(AppImages.starOutline, () {}),
                _buildStarReview(AppImages.starOutline, () {}),
                _buildStarReview(AppImages.starOutline, () {}),
                _buildStarReview(AppImages.starOutline, () {}),
              ],
            ),

            SizedBox(height: 20.h),

            // ---------------- write a review -------------------
            Text(
              'Write a review',
              style: AppTextStyles.title20_800w(color: Colors.white),
            ),

            SizedBox(height: 20),

            // ----------------- Text form field with max line ------------------
            SearchInputField(
              hintText: 'Write a review',
              height: 121,
              contentPadding: EdgeInsets.all(20),
            ),

            SizedBox(height: 20.h),

            // --------------- submit button ---------------------
            PrimaryButton(text: 'Submit', onTap: () {}, width: 112.w),

            // ------------ people reviews ---------------------
            SizedBox(height: 20.h),

            // -------------- comments people who review -----------------------
            PeopleReview(
              name: 'Olivia',
              comment: 'Incredible group of people and talented professionals',
              email: 'Olivi*******@gamil.com - 1day ago',
              ratings: '4.9',
              users: AppImages.user1,
            ),

            SizedBox(height: 10),

            PeopleReview(
              name: 'Olivia',
              comment: 'Incredible group of people and talented professionals',
              email: 'Olivi*******@gamil.com - 1day ago',
              ratings: '4.9',
              users: AppImages.user3,
            ),

            SizedBox(height: 10),

            PeopleReview(
              name: 'Olivia',
              comment:
                  'Incredible group of people and talented professionals Incredible group of people and talented professionals',
              email: 'Olivi*******@gamil.com - 1day ago',
              ratings: '4.9',
              users: AppImages.user2,
            ),

            SizedBox(height: 20.h),

            // ----------------- view all review page button --------------------
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    'View all reviews (45)',
                    style: AppTextStyles.title20_800w(color: Colors.white),
                  ),
                  Spacer(),
                  SvgPicture.asset(AppImages.arrowRight),
                ],
              ),
            ),
          ],
        ),
      ),

      // ---------------- booking button botton sheet --------------------
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: PrimaryButton(
            text: 'Book \$150/hour',
            onTap: () {
              // ------------------- build showModalBottomSheet -----------------
              showModalBottomSheet(
                context: context,
                backgroundColor: AppColor.scaffoldColor,
                isScrollControlled: true,
                builder: (context) {
                  return buildFilterSheet(
                    context,
                    SessionTime(),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget _buildStarReview(String imagePath, VoidCallback onTap) {
  return GestureDetector(onTap: onTap, child: SvgPicture.asset(imagePath));
}

Widget _avatar(String image, double left) {
  return Positioned(
    left: left,
    child: CircleAvatar(
      radius: 18,
      backgroundColor: Colors.black,
      child: CircleAvatar(radius: 16, backgroundImage: AssetImage(image)),
    ),
  );
}

Widget _moreAvatar(String text, double left) {
  return Positioned(
    left: left,
    child: CircleAvatar(
      radius: 18,
      backgroundColor: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Row _ratingSummary() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("4.8", style: AppTextStyles.title56_400w(color: Colors.white)),
          Row(
            children: List.generate(
              5,
              (index) => Icon(Icons.star, color: Colors.orange, size: 18),
            ),
          ),

          SizedBox(height: 5),

          Text(
            "487 Reviews",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),

      SizedBox(width: 20),

      Expanded(
        child: Column(
          children: [
            _ratingBarRow(5, 0.9),
            _ratingBarRow(4, 0.6),
            _ratingBarRow(3, 0.3),
            _ratingBarRow(2, 0.15),
            _ratingBarRow(1, 0.10),
          ],
        ),
      ),
    ],
  );
}

Widget _ratingBarRow(int index, double value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        Text("$index", style: TextStyle(color: Colors.white, fontSize: 12)),
        SizedBox(width: 10),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: value,
              minHeight: 8,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
              valueColor: AlwaysStoppedAnimation<Color>(AppColor.primaryColor),
            ),
          ),
        ),
      ],
    ),
  );
}

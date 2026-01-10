import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:linear_calender/linear_calender.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/app/widgets/containertext/container_text.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/core/constant/route_name.dart';
import 'package:parthtrada/features/search/presentation/view/widgets/search_input_field.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';
import '../widgets/experience_container.dart';
import '../widgets/people_reviews.dart';

class ExpertDetails extends StatefulWidget {
  const ExpertDetails({super.key});

  @override
  State<ExpertDetails> createState() => _ExpertDetailsState();
}

class _ExpertDetailsState extends State<ExpertDetails> {
  String? selectedSlot;

  final List<String> morningSlots = [
    '08:00 AM',
    '08:30 AM',
    '09:00 AM',
    '09:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
  ];

  final List<String> afternoonSlots = [
    '01:00 PM',
    '01:30 PM',
    '04:00 PM',
    '04:30 PM',
    '05:00 PM',
    '05:30 PM',
    '06:00 PM',
    '06:30 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
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

            // ----------------- ExperienceStatusContainer ---------------
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
                TextContainer(text: 'Machine Learning', width: 129),
                SizedBox(width: 10.w),
                TextContainer(text: 'Data Science', width: 95),
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

            // ------------------ avatar ----------------
            SizedBox(
              height: 38,
              child: Stack(
                children: [
                  _avatar(AppImages.user1, 0),
                  _avatar(AppImages.user2, 22),
                  _avatar(AppImages.user3, 44),
                  _avatar(AppImages.user4, 66),
                  _avatar(AppImages.user5, 88),
                  _moreAvatar("15+", 110),
                ],
              ),
            ),

            // --------------- LinearProgressIndicator ----------
            Padding(padding: const EdgeInsets.all(16), child: _ratingSummary()),

            // -------------- add review text button -------------
            GestureDetector(
              onTap: () {},
              child: Text(
                '+ Add Your Review',
                style: AppTextStyles.title16_400w(color: AppColor.primaryColor),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Rate this',
              style: AppTextStyles.title20_800w(color: Colors.white),
            ),

            SizedBox(height: 3),
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

            Text(
              'Write a review',
              style: AppTextStyles.title20_800w(color: Colors.white),
            ),
            SizedBox(height: 20,),

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
            SizedBox(height: 25.h),
          ],
        ),
      ),
      bottomSheet: PrimaryButton(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('MMMM yyyy').format(DateTime.now()),
                      style: AppTextStyles.title20_800w(
                        color: Color(0xff777980),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    LinearCalendar(
                      monthVisibility: false,
                      selectedColor: AppColor.primaryColor.withAlpha(20),
                      unselectedColor: Colors.transparent,
                      borderwidth: 0,
                      selectedBorderColor: AppColor.primaryColor,
                      unselectedBorderColor: Colors.transparent,
                      onChanged: (value) => print(value),
                      height: 60,
                      selectedTextStyle: TextStyle(
                        color: AppColor.primaryColor,
                      ),
                      unselectedTextStyle: TextStyle(color: Colors.white),
                      backgroundColor: Colors.transparent,
                      startDate: DateTime.now(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Morning Session',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: morningSlots.map((slot) {
                            return TimeSlotChip(
                              time: slot,
                              isSelected: selectedSlot == slot,
                              onTap: () {
                                setState(() {
                                  selectedSlot = slot;
                                });
                              },
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 32),
                        const Text(
                          'Afternoon Session',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: afternoonSlots.map((slot) {
                            return TimeSlotChip(
                              time: slot,
                              isSelected: selectedSlot == slot,
                              onTap: () {
                                setState(() {
                                  selectedSlot = slot;
                                });
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PrimaryButton(
                          text: 'Cancel',
                          onTap: () {
                            Navigator.pop(context);
                          },
                          width: 158,
                          color: Colors.black38,
                        ),
                        PrimaryButton(
                          text: 'Next',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Session Details',style: AppTextStyles.title20_800w(color: Colors.white),),
                                      Text('Help us prepare for your session with Sarah Chen',style: AppTextStyles.title16_400w(color: Color(0xff777980)),),
                                    Divider(color: Colors.grey,),
                                      Text('What Specific topic would you like to discuss?',style: AppTextStyles.title20_800w(color: Colors.white),),
                                      SizedBox(height: 10,),
                                      SearchInputField(
                                        hintText: 'E.g., Implementing machine learning models in production',
                                        height: 80,
                                        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                        maxLine: 5,
                                      ),
                                      SizedBox(height: 10,),
                                      Text('What challenges are you currently facing?',style: AppTextStyles.title20_800w(color: Colors.white),),
                                      SizedBox(height: 10,),
                                      SearchInputField(
                                        hintText: 'E.g., Model performance issues in production environment',
                                        height: 80,
                                        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                        maxLine: 5,
                                      ),
                                      SizedBox(height: 10,),
                                      Text('What outcome do you expect from this session?',style: AppTextStyles.title20_800w(color: Colors.white),),
                                      SizedBox(height: 10,),
                                      SearchInputField(
                                        hintText: 'E.g., A clear action plan for improving model',
                                        height: 80,
                                        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                        maxLine: 5,
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          PrimaryButton(
                                            text: 'Cancel',
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            width: 158,
                                            color: Colors.black38,
                                          ),
                                          PrimaryButton(
                                            text: 'Next',
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
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Text('Session Duration',style: AppTextStyles.title20_800w(color: Colors.white),),
                                                        SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              PrimaryButton(
              text: 'Cancel',
              onTap: () {
              Navigator.pop(context);
              },
              width: 158,
              color: Colors.black38,
              ),
              PrimaryButton(
                width: 158,
              text: 'Next',
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
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Align(alignment: Alignment.topRight,
child: GestureDetector(
onTap: () => Navigator.pop(context),
child: Icon(
Icons.close,
color: Colors.white,
),
),
),
Text('Confirm Booking',style: AppTextStyles.title20_800w(color: Colors.white),),
SizedBox(height: 20.h,),
Container(
width: double.infinity,
height: 240.h,
decoration: BoxDecoration(
color: Colors.black38,
borderRadius: BorderRadius.circular(12.r),
),
child: Padding(
padding: const EdgeInsets.only(top: 10.0,bottom: 10,left: 20.0,right: 20.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Booking Summary',style: AppTextStyles.title20_800w(color: Colors.white),),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Expert:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('Sarah Chen',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
SizedBox(height: 15,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Time:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('Wed 10am',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
SizedBox(height: 15,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Session Fee:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('\$150/hour',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
SizedBox(height: 15,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Duration:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('30 min',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
Divider(color: Colors.grey,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Total Payment:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('\$75',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
],
),
),
),
SizedBox(height: 20),
PrimaryButton(text: 'Confirm & Pay', onTap: (){
// ------------------- build showModalBottomSheet -----------------
showModalBottomSheet(
context: context,
backgroundColor: Colors.transparent,
isScrollControlled: true,
builder: (context) {
return buildFilterSheet(
context,
Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 72.h,
width: 72,
decoration: BoxDecoration(
color: Colors.black38,
borderRadius: BorderRadius.circular(999)
),
child: Padding(
padding: const EdgeInsets.all(10.0),
child: SvgPicture.asset(AppImages.confirmGreenCheck,),
),
),
SizedBox(height: 20.h),
Text('Confirm Booking',style: AppTextStyles.title20_800w(color: Colors.white),),
SizedBox(height: 10,),
Text('Your season with Sarah Chen is Scheduled for Wed 10 am',textAlign: TextAlign.center,style: AppTextStyles.title16_400w(color: Color(0xff777980)),),
SizedBox(height: 20.h,),
Container(
width: double.infinity,
height: 240.h,
decoration: BoxDecoration(
color: Colors.black38,
borderRadius: BorderRadius.circular(12.r),
),
child: Padding(
padding: const EdgeInsets.only(top: 10.0,bottom: 10,left: 20.0,right: 20.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Booking Summary',style: AppTextStyles.title20_800w(color: Colors.white),),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Expert:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('Sarah Chen',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
SizedBox(height: 15,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Time:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('Wed 10am',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
SizedBox(height: 15,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Session Fee:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('\$150/hour',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
SizedBox(height: 15,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Duration:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('30 min',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
Divider(color: Colors.grey,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Total Payment:',style: AppTextStyles.title14_600w(color: Color(0xff777980)),),
Text('\$75',style: AppTextStyles.title14_600w(color: Colors.white),)
],
),
],
),
),
),
SizedBox(height: 20,),
PrimaryButton(text: 'Done', onTap: (){
Navigator.pushNamed(context, RouteName.search);
}),
],
)
);
},
);
},
),

]
),
);
},
);
              }
              )
                ]
              )
                                                      ]
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            width: 158,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          width: 158,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
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

Widget _ratingSummary() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // ⭐ LEFT SIDE (4.8, stars, reviews)
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

      // ⭐ RIGHT SIDE (progress bars)
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

class TimeSlotChip extends StatelessWidget {
  final String time;
  final bool isSelected;
  final VoidCallback onTap;

  const TimeSlotChip({
    Key? key,
    required this.time,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF00CED1) : const Color(0xFF2a2a2a),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          time,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white70,
            fontSize: 14,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

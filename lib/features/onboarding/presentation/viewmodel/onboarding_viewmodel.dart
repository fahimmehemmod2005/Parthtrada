import 'package:flutter/material.dart';
import 'package:parthtrada/core/constant/app_images.dart';

class OnboardingViewmodel extends ChangeNotifier {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  int get currentPage => _currentPage;
  PageController get pageController => _pageController;

  final List<OnboardingData> _onboardingPages = [
    OnboardingData(
      title: 'Talk to Real Experts',
      description: 'Get career advice from verified professionals one-on-one.',
      image: AppImages.onboarding1,
    ),
    OnboardingData(
      title: 'Personalized Career Help',
      description: 'Ask questions, get guidance, and grow with expert support.',
      image: AppImages.onboarding2,
    ),
    OnboardingData(
      title: 'Achieve More, Faster',
      description: 'Book sessions, learn new skills, and reach your goals.',
      image: AppImages.onboarding3,
    ),
  ];

  List<OnboardingData> get onboardingPages => _onboardingPages;

  void setPage(int page) {
    _currentPage = page;
    notifyListeners();
  }

  void nextPage() {
    if (_currentPage < _onboardingPages.length - 1) {
      _currentPage++;
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    }
  }

  void skipToEnd() {
    _currentPage = _onboardingPages.length - 1;
    _pageController.jumpToPage(_currentPage);
    notifyListeners();
  }

  bool get isLastPage => _currentPage == _onboardingPages.length - 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class OnboardingData {
  final String title;
  final String description;
  final String image;

  OnboardingData({
    required this.title,
    required this.description,
    required this.image,
  });
}
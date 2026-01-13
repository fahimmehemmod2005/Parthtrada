import 'package:parthtrada/features/onboarding/presentation/viewmodel/onboarding_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppViewModels {
  static final List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<OnboardingViewmodel>(create: (_) => OnboardingViewmodel(),),
  ];
}
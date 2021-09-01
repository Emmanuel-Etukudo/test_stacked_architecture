import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_stacked_architecture/app/app.locator.dart';
import 'package:test_stacked_architecture/app/app.router.dart';

class StartupViewModel extends BaseViewModel{
  String _text = 'Hello there';
  String get text => _text;

  final _navigationService = locator<NavigationService>();

  void goToHome(){
    _navigationService.navigateTo(Routes.homeView);
    notifyListeners();
  }
}
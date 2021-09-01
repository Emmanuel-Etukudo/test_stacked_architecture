import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_stacked_architecture/app/app.locator.dart';
import 'package:test_stacked_architecture/app/app.router.dart';

class HomeViewModel extends BaseViewModel{
  String _title = 'Home View';
  String _homeText = 'Go to start up';
  int _counter = 0;

  final _navigationService = locator<NavigationService>();

  String get title => '$_title $_counter';
  String get homeText => _homeText;
  int get counter => _counter;

  void updateCounter () {
    _counter++;
    notifyListeners();

  }
  void goToStartup(){
    _navigationService.navigateTo(Routes.startupView);
  }
}
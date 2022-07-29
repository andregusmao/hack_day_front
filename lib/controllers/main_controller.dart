import 'package:mobx/mobx.dart';
part 'main_controller.g.dart';

class MainController = _MainController with _$MainController;

abstract class _MainController with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }
}

import 'package:copa_album_app/app/core/mvp/copa_presenter.dart';

abstract class SplashPresenter extends CopaPresenter {
  Future<void> checkLogin();
}

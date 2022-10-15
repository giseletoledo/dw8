import 'package:copa_album_app/app/core/mvp/copa_presenter.dart';
import 'package:copa_album_app/app/services/login/view/login_view.dart';

abstract class LoginPresenter extends CopaPresenter<LoginView> {
  Future<void> login(String email, String password);
}

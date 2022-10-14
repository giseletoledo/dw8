import 'package:copa_album_app/app/core/mvp/copa_presenter.dart';
import 'package:copa_album_app/app/pages/auth/register/view/register_view.dart';

abstract class RegisterPresenter extends CopaPresenter<RegisterView> {
  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
}

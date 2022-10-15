import 'package:copa_album_app/app/core/ui/helpers/messages.dart';
import 'package:copa_album_app/app/pages/auth/login/login_page.dart';

import 'package:flutter/widgets.dart';

import '../../../core/ui/helpers/loader.dart';
import './login_view.dart';

//classe abstrata não implementa o método do State, mas herda para usar o State da LoginPage e mixin com Loader e mensagens
abstract class LoginViewImpl extends State<LoginPage>
    with Messages<LoginPage>, Loader<LoginPage>
    implements LoginView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void error(String message) {
    hideLoader();
    showError(message);
  }

  @override
  void success() {
    hideLoader();
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }
}

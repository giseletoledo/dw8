import 'package:copa_album_app/app/core/ui/styles/button_styles.dart';
import 'package:copa_album_app/app/core/ui/styles/colors_app.dart';
import 'package:copa_album_app/app/core/ui/styles/text_styles.dart';
import 'package:copa_album_app/app/core/ui/widgets/button.dart';
import 'package:copa_album_app/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:copa_album_app/app/services/login/view/login_view_impl.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  final LoginPresenter presenter;
  const LoginPage({super.key, required this.presenter});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoginViewImpl {
  final formKey = GlobalKey<FormState>();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background_login.png'),
                    fit: BoxFit.cover)),
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      SizedBox(
                        height: MediaQuery.of(context).size.height *
                            (MediaQuery.of(context).size.width > 350
                                ? .30
                                : .25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'Login',
                            style: context.textStyles.titleWhite,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: emailEC,
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text('E-mail'),
                        ),
                        validator: Validatorless.multiple([
                          Validatorless.required('Obrigatório'),
                          Validatorless.email('Email inválido'),
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordEC,
                        obscureText: true,
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text('Senha'),
                        ),
                        validator: Validatorless.multiple([
                          Validatorless.required('Obrigatório'),
                          Validatorless.min(
                              6, 'Senha deve conter pelo menos 6 caracteres'),
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text(
                          'Esqueceu a senha?',
                          style: context.textStyles.textSecondaryFontMedium
                              .copyWith(
                                  color: context.colors.yellow, fontSize: 14),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Button(
                          width: MediaQuery.of(context).size.width * .9,
                          onPressed: () {
                            final formValid =
                                formKey.currentState?.validate() ?? false;

                            if (formValid) {
                              showLoader();
                              widget.presenter.login(
                                emailEC.text,
                                passwordEC.text,
                              );
                            }
                          },
                          style: context.buttonStyles.yellowButton,
                          labelStyle: context.textStyles
                              .textSecondaryFontExtraBoldPrimaryColor,
                          label: 'Entrar'),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Spacer(),
                      Text.rich(
                        style: context.textStyles.textSecondaryFontMedium
                            .copyWith(color: Colors.white),
                        TextSpan(
                          text: "Não possui conta? ",
                          children: [
                            TextSpan(
                              text: 'Cadastre-se',
                              style: context.textStyles.textSecondaryFontMedium
                                  .copyWith(
                                color: context.colors.yellow,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.of(context)
                                    .pushNamed('/auth/register'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

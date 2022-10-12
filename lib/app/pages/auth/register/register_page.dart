import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/widgets/button.dart';
import 'package:fwc_album_app/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:validatorless/validatorless.dart';

class RegisterPage extends StatefulWidget {
  final RegisterPresenter presenter;
  const RegisterPage({super.key, required this.presenter});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final password_confirmationEC = TextEditingController();

  @override
  void dispose() {
    nameEC.dispose();
    emailEC.dispose();
    passwordEC.dispose();
    password_confirmationEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 106.82,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bola.png'),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Cadastrar Usuario',
              style: context.textStyles.titleBlack,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: nameEC,
                    decoration: const InputDecoration(
                      label: Text(
                        'Nome Completo *',
                      ),
                    ),
                    validator: Validatorless.required('Obrigatorio'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: emailEC,
                    decoration: const InputDecoration(
                      label: Text(
                        'E-mail *',
                      ),
                    ),
                    validator: Validatorless.multiple([
                      Validatorless.required('Obrigatorio'),
                      Validatorless.email('Email Inválido'),
                    ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: passwordEC,
                    decoration: const InputDecoration(
                      label: Text(
                        'Senha *',
                      ),
                    ),
                    validator: Validatorless.multiple([
                      Validatorless.required('Obrigatorio'),
                      Validatorless.min(
                          6, 'senha deve conter pelo menos 6 digitos'),
                    ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: password_confirmationEC,
                    decoration: const InputDecoration(
                      label: Text(
                        'Confirma Senha *',
                      ),
                    ),
                    validator: Validatorless.multiple([
                      Validatorless.required('Obrigatorio'),
                      Validatorless.min(
                          6, 'senha deve conter pelo menos 6 digitos'),
                      Validatorless.compare(
                          passwordEC, 'Senha diferente de confirma senha')
                    ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Button.primary(
                    onPressed: () {
                      final formValid =
                          formKey.currentState?.validate() ?? false;

                      if (formValid) {
                        widget.presenter.register(
                          name: nameEC.text,
                          email: emailEC.text,
                          password: passwordEC.text,
                          password_confirmation: password_confirmationEC.text,
                        );
                      }
                    },
                    label: 'Cadastrar',
                    width: MediaQuery.of(context).size.width * .9,
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

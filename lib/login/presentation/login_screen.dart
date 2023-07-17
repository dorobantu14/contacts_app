import 'package:auto_route/auto_route.dart';
import 'package:contacts_app/app/app_router.dart';
import 'package:contacts_app/core/text_styles/text_styles.dart';
import 'package:contacts_app/core/widgets/app_button.dart';
import 'package:contacts_app/core/widgets/input_form.dart';
import 'package:contacts_app/login/presentation/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget with AutoRouteWrapper {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: this,
    );
  }
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Icon viewPasswordIcon = const Icon(Icons.visibility);
  Icon hidePasswordIcon = const Icon(Icons.visibility_off);
  bool isPasswordVisible = false;
  bool isLoginButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    usernameController.addListener(_refreshCallback);
    passwordController.addListener(_refreshCallback);
  }

  void _refreshCallback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ValueChanged? checkIfLoginFormIsCompleted(dynamic) {
      setState(() {
        isLoginButtonEnabled = usernameController.value.text.isNotEmpty &&
            passwordController.value.text.isNotEmpty;
      });
      return null;
    }

    Widget getUsernameField(BuildContext context) {
      return InputForm(
        labelText: 'Username',
        controller: usernameController,
        onChanged: checkIfLoginFormIsCompleted,
        errorText: context.read<LoginBloc>().state.status.name ==
                    LoginStatus.emptyUsername.name ||
                context.read<LoginBloc>().state.status.name ==
                    LoginStatus.noCredentials.name
            ? 'Please fill in the username'
            : null,
      );
    }

    Widget getPasswordField(BuildContext context) {
      return InputForm(
        labelText: 'Password',
        controller: passwordController,
        obscureText: !isPasswordVisible,
        onChanged: checkIfLoginFormIsCompleted,
        suffixIcon: GestureDetector(
          child: isPasswordVisible ? hidePasswordIcon : viewPasswordIcon,
          onTap: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        ),
        errorText: context.read<LoginBloc>().state.status.name ==
                    LoginStatus.emptyPassword.name ||
                context.read<LoginBloc>().state.status.name ==
                    LoginStatus.noCredentials.name
            ? 'Please fill in the password'
            : null,
      );
    }

    VoidCallback? onLoginButtonPressed() {
      context.read<LoginBloc>().add(
            LoginEvent.loginEvent(
              username: usernameController.text,
              password: passwordController.text,
            ),
          );
      _refreshCallback();

      return null;
    }

    Widget getLoginButton(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: AppButton(
          isRounded: true,
          text: const Text('Login'),
          color: MaterialStateProperty.all<Color>(
              Colors.lightBlueAccent.withOpacity(0.4)),
          onPressed: onLoginButtonPressed,
        ),
      );
    }

    Widget getAppTitle() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.contact_phone_outlined, size: 48),
          const SizedBox(width: 8),
          Text('Contacts App', style: TextStyles.titleStyle)
        ],
      );
    }

    Widget getLoginForm(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.08,
                horizontal: 32),
            child: Column(
              children: [
                Text(
                  'Login',
                  style: TextStyles.subtitleStyle,
                ),
                const SizedBox(height: 48),
                getUsernameField(context),
                const SizedBox(height: 16),
                getPasswordField(context),
                const SizedBox(height: 48),
                getLoginButton(context)
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status.name == LoginStatus.success.name) {
            context.router.push(const ContactsRoute());
          }
        },
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlueAccent.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 32, right: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  getAppTitle(),
                  getLoginForm(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

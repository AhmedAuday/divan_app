import 'package:divan_app/src/interface/Widget/custom_button.dart';
import 'package:divan_app/src/interface/Widget/custom_willpop_scope.dart';
import '../Themes/theme.dart';
import 'package:divan_app/src/core/helper/show_snakbar.dart';
import 'package:flutter/material.dart';
import '../Widget/custum_text_filed.dart';
import '../Widget/navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String id = "LoginPage";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passController = TextEditingController();
  String? user;
  String? pass;
  bool _validateUser = false;
  bool _validatePass = false;

  @override
  Widget build(BuildContext context) {
    return CustomWillPopScope(
      title: const Text("Do You Want To Exit The App"),
      onPressed: () => Navigator.of(context).pop(true),
      onPressedNo: () => Navigator.of(context).pop(false),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: loginPage,
          body: SingleChildScrollView(
            // Wrap with SingleChildScrollView
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("Assets/Image/divan.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                    right: 15,
                    left: 15,
                  ),
                  child: CustomFormTextField(
                    controller: userController,
                    errorText: _validateUser ? "Field is Required" : null,
                    hintText: "Email",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: CustomFormTextField(
                    obs: true,
                    controller: passController,
                    errorText: _validatePass
                        ? "Required Field And 8 char At least"
                        : null,
                    hintText: "Password",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomButton(
                      text: "Login",
                      onTap: (() {
                        setState(() {
                          userController.text.isEmpty
                              ? _validateUser = true
                              : _validateUser = false;
                          passController.text.isEmpty &&
                                  passController.text.length < 8
                              ? _validatePass = true
                              : _validatePass = false;
                        });
                        if (userController.text.isNotEmpty &&
                            passController.text.isNotEmpty &&
                            passController.text.length > 8) {
                          Navigator.pushNamed(context, NavBarPage.id);
                          showSnackBar(context, "successfully Logged in");
                        } else {
                          showSnackBar(context, "Wrong");
                        }
                      })),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

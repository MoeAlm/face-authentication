import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:face_auth/common/utils/custom_text_field.dart';
import 'package:face_auth/common/views/custom_button.dart';
import 'package:face_auth/common/utils/custom_snackbar.dart';
import 'package:face_auth/constants/theme.dart';
import 'package:face_auth/model/password_model.dart';
import 'package:face_auth/register_face/register_face_view.dart';
import 'package:flutter/material.dart';

class EnterPasswordView extends StatelessWidget {
  EnterPasswordView({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();
  final _formFieldKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: Text(
          "كلمة المرور",
          style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                color: Colors.black54,
              ),
        ),
        foregroundColor: primaryColor,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: primaryWhite,
        ),
        child: Center(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  formFieldKey: _formFieldKey,
                  controller: _controller,
                  hintText: "كلمة المرور",
                  validatorText: "ادخل كلمة المرور لإكمال عملية التسجيل",
                ),
                CustomButton(
                  text: "الاستمرار",
                  onTap: () async {
                    if (_formFieldKey.currentState!.validate()) {
                      FocusScope.of(context).unfocus();
                      FirebaseFirestore.instance
                          .collection("password")
                          .doc("PG0eZfMW5FfkOy5JCXuS")
                          .get()
                          .then((snap) {
                        Password password = Password.fromJson(snap.data()!);
                        if (password.password == _controller.text.trim()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RegisterFaceView(),
                            ),
                          );
                        } else {
                          CustomSnackBar.errorSnackBar("Wrong Password :( ");
                        }
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

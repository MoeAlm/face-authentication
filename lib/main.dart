import 'package:face_auth/authenticate_face/authenticate_face_view.dart';
import 'package:face_auth/common/views/custom_button.dart';
import 'package:face_auth/common/utils/custom_snackbar.dart';
import 'package:face_auth/common/utils/extensions/size_extension.dart';
import 'package:face_auth/common/utils/screen_size_util.dart';
import 'package:face_auth/constants/theme.dart';
import 'package:face_auth/register_face/enter_password_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('ar'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Face Authentication App',
      theme: ThemeData(
        fontFamily: 'Tajawal',
        colorScheme: ColorScheme.fromSwatch(accentColor: accentColor),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: textColor, fontFamily: 'Tajawal', fontSize: 0.05.sw),
          foregroundColor: primaryWhite
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(20),
          filled: true,
          fillColor: primaryWhite,
          hintStyle: TextStyle(
            color: primaryBlack.withOpacity(0.6),
            fontWeight: FontWeight.w500,
          ),
          errorStyle: const TextStyle(
            letterSpacing: 0.8,
            color: Colors.redAccent,
            fontWeight: FontWeight.w500,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeUtilContexts(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/face.png',
              width: 0.7.sw,
            ),
          ),
          SizedBox(height: 0.025.sh),
          Text(
            "تسجيل الدخول بواسطة الوجه",
            style: TextStyle(
              color: primaryBlack,
              fontSize: 0.03.sh,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 0.07.sh),
          CustomButton(
            text: "إنشاء مستخدم",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EnterPasswordView(),
                ),
              );
            },
          ),
          SizedBox(height: 0.025.sh),
          CustomButton(
            text: "تسجيل الدخول",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AuthenticateFaceView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void initializeUtilContexts(BuildContext context) {
    ScreenSizeUtil.context = context;
    CustomSnackBar.context = context;
  }
}

import 'package:bootcamp_flutter/features/auth/screens/forgot_screen.dart';
import 'package:bootcamp_flutter/features/auth/screens/income_screen.dart';
import 'package:bootcamp_flutter/features/auth/screens/login_screen.dart';
import 'package:bootcamp_flutter/features/auth/screens/sign_up_screen.dart';
import 'package:bootcamp_flutter/features/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'firebase_options.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bootcamp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
<<<<<<< HEAD
      home: IncomeScreen(),
=======
      routes: {
        "/": (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgotScreen.routeName: (context) => ForgotScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
>>>>>>> origin/master
    );
  }
}

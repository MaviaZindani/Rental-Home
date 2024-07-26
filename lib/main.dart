import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:houseapp/controller/house_fuctions.dart';
import 'package:houseapp/firebase_options.dart';
import 'package:houseapp/utils/routes.dart';
import 'package:houseapp/view/home_screen/home_screen.dart';
import 'package:houseapp/view/login_signup_screen/login_signup_screen.dart';
import 'package:houseapp/view/wish_screen/wish_screen.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
     MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HouseFuctions()),
      ],
      child: const MyApp(),
    ),
  );
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.loginSignupScreen,
      routes: {
        Routes.loginSignupScreen: (context) => LoginSignupScreen(),
        Routes.homeScreen: (context) => const HomeScreen(),
        Routes.wishScreen: (context) => const WishScreen(),
      },
    );
  }
}

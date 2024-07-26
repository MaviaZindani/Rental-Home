import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/utils/routes.dart';
import 'package:houseapp/view/login_signup_screen/widgets/login_signup_field.dart';

class LoginSignupScreen extends StatelessWidget {
  LoginSignupScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 10),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children:[ 
            Text(
              'Login to Your Account',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: homeTextColor,
              ),
            ),
                // Image.asset('assets/images/login_signup_images/login_logo_image1.png',height: 200,width: 400,),
          ],
            ),
            const SizedBox(
              height: 15,
            ),
            LoginSignupField(
              prefixIcon: const Icon(Icons.email),
                textController: emailController,
                textHint: 'Email@gmail.com',
                inputTextType: TextInputType.emailAddress),
            const SizedBox(
              height: 15,
            ),
            LoginSignupField(
              prefixIcon: const Icon(Icons.password),
                textController: emailController,
                textHint: 'Password',
                inputTextType: TextInputType.emailAddress),
            const  SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(value: false, onChanged: (selected){}),
                  Text('Remember me')
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: homeBlue
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, Routes.homeScreen);
                    }, 
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 140.0,vertical: 12),
                      child: Text('Sign in',style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                    ),
              Text('Forgot the password?',
              style: TextStyle(
                color: homeBlue,
                fontSize: 12
               ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(
                    thickness: 2,
                    height: 20,
                    color: Colors.black,
                  ),
                  Text('or continue with',
                  style: TextStyle(
                    color: homeTextColor,
                    fontSize: 12
                  ),
                    ),
                Divider(
                  height: 20,
                  thickness: 2,
                  color: Colors.black,
                  ),
                ],
              ),
                      Container(
              width: 230,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400,width: 1.5),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 8),
                          child: Icon(
                            Icons.facebook,
                            ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400,width: 1.5),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 8.0),
                          child: Icon(
                            Icons.apple,
                            ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400,width: 1.5),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 8.0),
                          child: Icon(
                            Icons.groups_sharp,
                            ),
                        ),
                      ),
                     ],
                  ),
                      ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Dont have an account?',
                  style: TextStyle(
                    color: homeTextColor,
                    fontSize: 12
                  ),
                  ),
                  Text('Sign up',
                  style: TextStyle(
                    color: homeBlue,
                    fontSize: 12
                  ),
                          ),
                ],
              ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

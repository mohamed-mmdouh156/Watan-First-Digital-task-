import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watan_task1/presentation/router/app_router.dart';
import 'package:watan_task1/presentation/styles/assets_manager.dart';
import 'package:watan_task1/presentation/styles/color_manager.dart';
import 'package:watan_task1/presentation/widget/default_text_field.dart';
import 'package:watan_task1/presentation/widget/defualtButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: GoogleFonts.poppins(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                'Fill your details or continue \n with social media',
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  color: ColorManager.grey,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              DefaultTextField(
                  hintText: 'Email Address',
                  controller: emailController,
                  prefixIcon: Icons.email_outlined,
                  isPass: false,
              ),
              const SizedBox(
                height: 16.0,
              ),
              DefaultTextField(
                hintText: 'Password',
                controller: passwordController,
                prefixIcon: Icons.lock_outline_rounded,
                isPass: true,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: (){},
                  child: Text(
                    'Forget Password ?',
                    style: GoogleFonts.poppins(
                      fontSize: 12.0,
                      color: ColorManager.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              DefaultButton(
                  buttonText: 'Login',
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, RoutesManager.motoSecondRoute);
                  },
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 40,
                    color: ColorManager.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or Continue with',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        color: ColorManager.grey,
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 40,
                    color: ColorManager.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image(
                      image: AssetImage(AssetsManager.loginScreenGoogle),
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image(
                      image: AssetImage(AssetsManager.loginScreenFacebook),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        'New User?',
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          color: ColorManager.grey,
                        ),
                      ),
                  ),
                  Text(
                    'Create Account',
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      color: ColorManager.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

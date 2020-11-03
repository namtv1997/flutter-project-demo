
import 'package:flutter/material.dart';
import 'package:flutter_commerce_app/components/no_account_text.dart';
import 'package:flutter_commerce_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:flutter_commerce_app/screens/sign_in/components/social_card.dart';
import 'package:flutter_commerce_app/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter_commerce_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04,),
                  Text(
                    "Complete Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Complete your details or continue \nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08,),
                  CompleteProfileForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08,),
                  SizedBox(height: getProportionateScreenWidth(20)),
                  Text(
                    'By continuing your confirm that you agree \nwith our Term and Condition',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}



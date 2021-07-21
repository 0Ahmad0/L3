import 'package:flutter/material.dart';
import 'package:login_ui_3a/constants/const.dart';
import 'package:login_ui_3a/widgets/build_textbutton.dart';
import 'package:login_ui_3a/widgets/build_textfiled.dart';

import 'sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KColor1,
      body: ListView(
        children: [
          SizedBox(
            height: size.width * 0.1,
          ),
          Image(
            image: AssetImage('assets/images/logo.png'),
            width: size.width * 0.3,
            height: size.width * 0.3,
          ),
          Text(
            'SIGN IN',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: size.width * 0.1, color: KColor2),
          ),
          SizedBox(
            height: size.width * 0.25,
          ),
          BuildTextFiled(
            size: size,
            text: 'johndoe@gmail.com',
            icon: Icons.email,
          ),
          BuildTextFiled(
            size: size,
            text: '*****************',
            icon: Icons.lock,
          ),
          FlatButton(
            minWidth: double.infinity,
            padding: EdgeInsets.all(18.0),
            onPressed: () {},
            child: Text('CONTINUE',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width *0.06
            ),),
            color: KColor2,
          ),
          SizedBox(height: size.width *0.3,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: size.width *0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildTextButton(
                  size: size,
                  text: 'New User',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SignUpPage()));
                  },
                ),
                BuildTextButton(
                  size: size,
                  text: 'Reset',
                  onTap: (){

                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


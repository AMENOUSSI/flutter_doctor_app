import 'package:doctor_appointment/components/button.dart';
import 'package:flutter/material.dart';

import '../utils/config.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final  _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool obsecurePass = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _emailController,
              keyboardType: TextInputType.emailAddress,
            cursorColor: Config.primaryColor,
            decoration: const InputDecoration(
              hintText: 'Email Address',
              labelText: 'Email',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.email_outlined),
              prefixIconColor: Config.primaryColor
            ),
          ),
          Config.spaceSmall ,
          TextFormField(
            controller: _passwordController,
            keyboardType: TextInputType.visiblePassword,
            cursorColor: Config.primaryColor,
            obscureText: obsecurePass,
            decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.lock_outline),
                prefixIconColor: Config.primaryColor,
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  obsecurePass = !obsecurePass;
                });
              },
                  icon: obsecurePass ? const Icon(Icons.visibility_off_outlined,color: Colors.black38,): const Icon(Icons.visibility_outlined,color: Config.primaryColor)),
            ),
          ),
          Config.spaceSmall ,
          Button(
            width: double.infinity,
            title: 'Sign In',
            onPressed: (){},
            disable: false,
          ),
        ],
      ),
    );
  }
}

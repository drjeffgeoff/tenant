  import 'package:flutter/material.dart';
import 'package:nyumbayo_app/views/Auth/forgot_password/forget_password_model_bottom_sheet.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';
import '../forgot_password/forgot_password_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight-10),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: tEmail,
              labelText: tEmail,
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: tFormHeight),
          TextFormField(
            decoration: const InputDecoration(
              hintText: tPassword,
              labelText: tPassword,
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
           const SizedBox(height: tFormHeight),
           SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){},
              child: Text(tLogin.toUpperCase()),
            ),
           ),
           Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              },
            child: const Text(tForgotPassword ),
            ),
           ),
        ],
      ),
      ),
    );
  }

   
}


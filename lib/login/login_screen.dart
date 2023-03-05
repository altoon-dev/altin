import 'dart:io';
import 'package:altyn_login/login/login_service.dart';
import 'package:altyn_login/login/user_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:dio/dio.dart';

import 'login_interface.dart';


var maskFormatter = new MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy
);


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  final ILogin _loginService = LoginService();
  final TextEditingController _emailController = TextEditingController(text: "");
  bool _isObscure = true;
  final TextEditingController _passwordController = TextEditingController();

  //final formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.language,
                      color: Color(
                        0xFF65849D,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text("Рус"),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(
                        0xFF65849D,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth:
                    MediaQuery.of(context).size.width / 1.2,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('images/logo.svg'),
                      SizedBox(
                        height: 30,
                      ),
                  Container(
                    width: 500,
                        child: TextFormField(
                          inputFormatters: [maskFormatter],
                          controller: _emailController,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA1B4D0).withOpacity(0.25),),),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              ),
                            hintText: "Login",
                            hintStyle: TextStyle(
                              color: Color(0xFF65849D),
                            ),
                            fillColor: Color(0xFF65849D),
                          ),
                          validator: (String? phoneNumber) {
                            print(phoneNumber);
                            if (phoneNumber != null && phoneNumber.length < 19) {
                              return "Phone number is not correct!";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                       Container(
                         width: 500,
                         child: TextFormField(
                           textInputAction: TextInputAction.done,
                      //  onEditingComplete: ()async{
                          ////   UserModel? user = await _loginService.login(_emailController.text,_passwordController.text );
                          //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>LoginScreen(user:user))

                          //},
                          controller: _passwordController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                         enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Color(0xFFA1B4D0).withOpacity(0.25),),),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red,),
                              ),
                            hintText: "Password",
                            //errorText: "Неверный пароль!",
                            suffixIcon: IconButton(
                              icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                              onPressed: (){
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                            hintStyle: TextStyle(
                              color: Color(0xFF65849D),
                            ),
                            fillColor: Color(0xFF65849D),
                          ),
                           validator: (String? UserName) {
                             if (UserName != null && UserName.isEmpty) {
                               return "Email can't be empty";
                             }
                             return null;
                           },
                      ),
                       ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 500,
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Забыли пароль?",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF0C4471),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      FilledButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                            Size(200,60),),
                          backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color(0xFF448BF5),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        child: Text("ВОЙТИ"),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
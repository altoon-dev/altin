import 'package:altyn_login/pages/admin_panel/admin_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import '../../list_request/list_page.dart';
import '../repository/login_repository.dart';
import '../view_model/login_view_model.dart';
import 'package:altyn_login/route.dart' as route;


var maskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginRepository _loginService = LoginRepository();

  final TextEditingController _emailController =
  TextEditingController(text: "");

  final TextEditingController _passwordController = TextEditingController();

  //final formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var viewModel = context.watch<ViewModel>();

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
                    maxWidth: MediaQuery.of(context).size.width / 1.2,
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
                              borderSide: BorderSide(
                                color: Color(0xFFA1B4D0).withOpacity(0.25),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
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
                            if (phoneNumber != null &&
                                phoneNumber.length < 18) {
                              return "Phone number is not correct!";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PasswordTextField(
                          passwordController: _passwordController),
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
                            Size(200, 60),
                          ),
                          backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color(0xFF448BF5),
                          ),
                        ),
                        onPressed: () async {
                         // Navigator.pushNamed(context, route.adminPage);
                          Navigator.pushNamed(context, '/home');
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Loading...')),
                            );
                            bool isSignedIn = await viewModel.login(
                              "+${_emailController.text.replaceAll(RegExp(r'\D'), "")}",
                              _passwordController.text,
                            );
                            if (isSignedIn) {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/home', ModalRoute.withName('/home'));
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Successfully signed in!')),

                               // Navigator.push(context, MaterialPageRoute(builder: (context) => AdminHome()))
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Incorrect phone number or password.',
                                  ),
                                ),
                              );
                            }
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

  static Widget create() => ChangeNotifierProvider(
    create: (_) => ViewModel(),
    child: LoginScreen(),
  );
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: TextFormField(
        textInputAction: TextInputAction.done,
        //  onEditingComplete: ()async{
        ////   UserModel? user = await _loginService.login(_emailController.text,_passwordController.text );
        //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>LoginScreen(user:user))

        //},
        controller: _passwordController,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFA1B4D0).withOpacity(0.25),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          hintText: "Password",
          //errorText: "Неверный пароль!",
          // suffixIcon: IconButton(
          //   // icon: Icon(_isObscure
          //   //     ? Icons.visibility
          //   //     : Icons.visibility_off),
          //   onPressed: () {
          //   },
          // ),
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
    );
  }
}
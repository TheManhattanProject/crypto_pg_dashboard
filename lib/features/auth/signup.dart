import 'package:dashboard/features/onbording/screens/index.dart';
import 'package:dashboard/util/otp_field.dart';
import 'package:dashboard/util/responsive.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _emailController = TextEditingController();
  final PageController _pageController = PageController();
  bool isContinue = false;
  String otp = '';
  bool isEmail = true;
  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _pageController.dispose();
    super.dispose();
  }
bool isPhoneNumber(String input) {
    final phoneRegex = RegExp(
      r'^\+?1?\d{9,15}$', // Adjust the regex based on your phone number format requirements
    );
    return phoneRegex.hasMatch(input);
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: width,
          decoration: const BoxDecoration(
              // image: DecorationImage(
              //     image: AssetImage('assets/images/spodyback.jpg'),
              //     fit: BoxFit.cover),
                  color: Colors.blue
                  ),
          padding: EdgeInsets.all(isMobile ? 0 : 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Padding(
               padding:  EdgeInsets.only(top: 12.0,left: 16),
               child:  Row(children: [
                 ImageIcon(AssetImage("assets/images/icons/cryptocurrency.png")),
                 SizedBox(width: 4,),
                 Text("Cryptopay",
                 style: TextStyle(
                   fontFamily: "Montserrat",
                   fontSize: 24,
                   fontStyle: FontStyle.italic,
                   color: Colors.white,
                   fontWeight: FontWeight.w700
                 ),
                 )
               ],),
             ),
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: isMobile ? width : 522,
                padding:
                    EdgeInsets.only(top: height < 664 ? 24 : 160, left: 50),
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: isMobile
                        ? null
                        : const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          )),
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 5),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    final slideAnimation = Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: const Offset(0, 0),
                    ).animate(animation);
                    return SlideTransition(
                      position: slideAnimation,
                      child: child,
                    );
                  },
                  child: !isContinue
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              children: [
                                const ImageIcon(
                                  AssetImage(
                                      "assets/images/icons/cryptocurrency.png"),
                                  size: 54,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Welcome to ",
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontFamily: "MontSerrat",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Cryptopay Payments",
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontFamily: "MontSerrat",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 12.0, bottom: 24, right: 52),
                                  child: Text(
                                    "Get started with your email or phone number",
                                    style: TextStyle(
                                        color: Color(0xff161616),
                                        fontFamily: "MontSerrat",
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SizedBox(
                                  height: 46,
                                  width: 410,
                                  child: TextField(
                                    controller: _emailController,
                                    cursorColor: Colors.blueAccent,
                                    cursorHeight: 24,
                                    keyboardType: TextInputType.emailAddress,
                                    textAlignVertical: TextAlignVertical.top,
                                    decoration: const InputDecoration(
                                        hintText:
                                            "Enter your email or phone number",
                                        hintStyle: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: Color(0xff161616),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black45)),
                                        fillColor:
                                            Color.fromARGB(255, 255, 251, 251),
                                        hoverColor: Color(0xffF8F9FE),
                                        filled: true),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 48, bottom: 18),
                                  child: SizedBox(
                                    height: 42,
                                    width: 410,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                const WidgetStatePropertyAll(
                                                    Colors.blue),
                                            shape: WidgetStatePropertyAll(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2)))),
                                        onPressed: () {
                                          if (_emailController
                                              .text.isNotEmpty) {
                                            setState(() {
                                              isContinue = true;
                                            });
                                          }
                                        },
                                        child: Text(
                                          "Continue",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Montserrat",
                                            fontSize: isMobile ? 12 : 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 62.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          color: Color(0xffA0A0A0),
                                          thickness: 1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Text(
                                          "or",
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              color: Color(0xffA0A0A0),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: Color(0xffA0A0A0),
                                          thickness: 1,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 430,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xffA0A0A0))),
                                  margin: const EdgeInsets.only(top: 24),
                                  child: const Center(
                                      child: Text(
                                    "Sign in with google",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Montserrat",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  )),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 24.0),
                              child: RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: "By continuing you agree to our",
                                      style: TextStyle(
                                          color: Color(0xffA0A0A0),
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: " privacy policy ",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 0, 75, 213),
                                          fontFamily: "Montserrat",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: "and",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Color(0xffA0A0A0),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: " privacy policy ",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 0, 75, 213),
                                          fontFamily: "Montserrat",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ]),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ImageIcon(
                                  AssetImage(
                                      "assets/images/icons/cryptocurrency.png"),
                                  size: 54,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 12.0, bottom: 12, right: 52),
                                  child: Text(
                                    "Enter password",
                                    style: TextStyle(
                                        color: Color(0xff161616),
                                        fontFamily: "MontSerrat",
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      _emailController.text,
                                      style: const TextStyle(
                                          color: Colors.black45,
                                          fontFamily: "MontSerrat",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isContinue = false;
                                        });
                                      },
                                      child: const Text(
                                        "change",
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontFamily: "MontSerrat",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    OTPTextField(
                                      otp: otp,
                                      length: 6,
                                      width: 410,
                                      fieldWidth: 60,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0),
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff161616),
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600),
                                      textFieldAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      fieldStyle: FieldStyle.box,
                                      otpFieldStyle: OtpFieldStyle(
                                        backgroundColor: Colors.transparent,
                                      ),
                                      onChanged: (pin) {
                                        setState(() {
                                          otp = pin;
                                        });
                                      },
                                      onCompleted: (pin) {
                                        setState(() {
                                          otp = pin;
                                        });
                                      },
                                      disable: false,
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        "Resend OTP",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontFamily: "Montserrat",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 18),
                                  child: SizedBox(
                                    height: 42,
                                    width: 410,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                const WidgetStatePropertyAll(
                                                    Colors.blue),
                                            shape: WidgetStatePropertyAll(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2)))),
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder:(context)=> OnBordingScreen(isPhoneNumber: isPhoneNumber(_emailController.text),)));
                                        },
                                        child: Text(
                                          "Varify",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Montserrat",
                                            fontSize: isMobile ? 12 : 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 34.0),
                                  child: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text:
                                              "By continuing you agree to our",
                                          style: TextStyle(
                                              color: Color(0xffA0A0A0),
                                              fontFamily: "Montserrat",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: " privacy policy ",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 75, 213),
                                              fontFamily: "Montserrat",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: "and",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Color(0xffA0A0A0),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: " privacy policy ",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 75, 213),
                                              fontFamily: "Montserrat",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                ),
              ),
            ],
          )),
    );
  }
}

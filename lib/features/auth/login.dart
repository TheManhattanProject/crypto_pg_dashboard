import 'package:dashboard/util/error_box_auth.dart';
import 'package:dashboard/util/responsive.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isEntered = false;
  bool isEmailEnterd = false;
  bool passVisible = false;
  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 131, 238),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 900,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          if (!isMobile)
                            const ImageIcon(
                              AssetImage(
                                  "assets/images/icons/cryptocurrency.png"),
                              color: Colors.white,
                              size: 34,
                            ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            "CryptoPay",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Wrap(
                        direction: isMobile ? Axis.vertical : Axis.horizontal,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            "New to CryptoPay?",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: isMobile ? 14 : 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 14,
                            height: isMobile ? 4 : 0,
                          ),
                          SizedBox(
                            width: isMobile ? 80 : 90,
                            height: isMobile ? 30 : 40,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        const WidgetStatePropertyAll(
                                            Colors.white),
                                    padding: const WidgetStatePropertyAll(
                                        EdgeInsets.zero),
                                    shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)))),
                                onPressed: () {},
                                child: Text(
                                  "signUp",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: "Montserrat",
                                    fontSize: isMobile ? 12 : 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Stack(
                  alignment:
                      isMobile ? Alignment.center : Alignment.centerRight,
                  children: [
                    if (!isMobile)
                      Container(
                        height: 200 * 2.6,
                        width: 900,
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.only(top: 40, left: 26),
                        decoration: BoxDecoration(
                            color: const Color(0xffF9F8FE),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              direction: Axis.vertical,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.26,
                                  height: 100,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.26,
                                    child: const Text(
                                      "⚡ Boost buyer intent, reduce fake orders, & increase pre-paid order share on Magic Checkout!",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  onEnter: (value) {
                                    setState(() {
                                      isEntered = !(value.down);
                                    });
                                  },
                                  onExit: (event) {
                                    setState(() {
                                      isEntered = event.down;
                                    });
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Explore Magic CheckOut",
                                        style: TextStyle(
                                          fontSize:
                                              MediaQuery.sizeOf(context).width *
                                                  0.016,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                      AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        width: isEntered ? 15 : 10,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward,
                                        size: 18,
                                        color: Colors.blueAccent,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8 * 20),
                              child: RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: "Need help?",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Color(0xff161616),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: " Contact Us",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 0, 76, 255),
                                          fontFamily: "Montserrat",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Wrap(
                        direction: Axis.vertical,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Container(
                            height: 200 * 2.9,
                            width: 200 * 1.8,
                            decoration: BoxDecoration(
                                color: const Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(4)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 48),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Wrap(
                                  runSpacing: 2,
                                  children: [
                                    const Text(
                                      "Login to Dashboard",
                                      style: TextStyle(
                                          fontFamily: "MontSerrat",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    if (isEmailEnterd == false)
                                      Wrap(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 24.0),
                                            child: Text(
                                              "Email or Mobile Number",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 11,
                                                  fontFamily: "Montserrat"),
                                            ),
                                          ),
                                          inputTextField(
                                              controller: _emailController,
                                              keyboardType:
                                                  TextInputType.emailAddress),
                                          const ErrorBoxAuth(
                                            errorMessage: "",
                                            showErrorMessage: false,
                                            height: 4,
                                            width: 200,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 24),
                                            child: SizedBox(
                                              height: 40,
                                              width: double.maxFinite,
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                      backgroundColor:
                                                          const WidgetStatePropertyAll(
                                                              Colors.blue),
                                                      shape: WidgetStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)))),
                                                  onPressed: () {
                                                    if (_emailController
                                                        .text.isNotEmpty) {
                                                      setState(() {
                                                        isEmailEnterd = true;
                                                      });
                                                    }
                                                  },
                                                  child: Text(
                                                    "Next",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Montserrat",
                                                      fontSize:
                                                          isMobile ? 12 : 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if (isEmailEnterd == true)
                                      Wrap(
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 24.0),
                                              child: Row(
                                                children: [
                                                  Text(_emailController.text,
                                                      style: const TextStyle(
                                                          color: Colors.black87,
                                                          fontSize: 12,
                                                          fontFamily:
                                                              "Montserrat")),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _passwordController.clear();
                                                        isEmailEnterd = false;
                                                      });
                                                    },
                                                    child: const Text("Change",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .blueAccent,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily:
                                                                "Montserrat")),
                                                  ),
                                                ],
                                              )),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: Row(
                                                children: [
                                                 const Text("Password",
                                                      style:  TextStyle(
                                                          color: Colors.black87,
                                                          fontSize: 12,
                                                          fontFamily:
                                                              "Montserrat")),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                     
                                                    },
                                                    child: const Text("(Forgot?)",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .blueAccent,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily:
                                                                "Montserrat")),
                                                  ),
                                                ],
                                              )),
                                          inputTextField(
                                              controller: _passwordController,
                                              keyboardType: TextInputType.text,
                                              hint: "Password"
                                              ),
                                          const ErrorBoxAuth(
                                            errorMessage: "",
                                            showErrorMessage: false,
                                            height: 4,
                                            width: 200,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 24),
                                            child: SizedBox(
                                              height: 40,
                                              width: double.maxFinite,
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                      backgroundColor:
                                                          const WidgetStatePropertyAll(
                                                              Colors.blue),
                                                      shape: WidgetStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)))),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Login",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Montserrat",
                                                      fontSize:
                                                          isMobile ? 12 : 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    const Row(
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
                                                color: Color(0xff161616),
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
                                    Center(
                                      child: Container(
                                        height: 40,
                                        width: 200,
                                        color: Colors.blue,
                                        margin: const EdgeInsets.only(top: 24),
                                        child: const Center(
                                            child: Text(
                                          "Sign in with google",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Montserrat",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                                if (isMobile)
                                  Center(
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: "Privacy Policy ",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 76, 255),
                                                fontFamily: "Montserrat",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "&",
                                            style: TextStyle(
                                                fontFamily: "Montserrat",
                                                color: Color(0xff161616),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: " Terms of Service ",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 76, 255),
                                                fontFamily: "Montserrat",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "apply.",
                                            style: TextStyle(
                                                fontFamily: "Montserrat",
                                                color: Color(0xff161616),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)),
                                      ]),
                                    ),
                                  ),

                              ],
                            ),
                          ),
                          if (!isMobile)
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: RichText(
                                  text: const TextSpan(children: [
                                    TextSpan(
                                        text: "Privacy Policy ",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontFamily: "Montserrat",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "&",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: Color(0xff161616),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: " Terms of Service ",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontFamily: "Montserrat",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "apply.",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: Color(0xff161616),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ]),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox inputTextField(
      {required controller, required TextInputType keyboardType,String hint = ''}) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: controller,
        cursorColor: Colors.blueAccent,
        cursorHeight: 24,
        keyboardType: keyboardType,
        obscureText:
            (keyboardType != TextInputType.emailAddress) ? passVisible : false,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
                                            fontFamily: "Montserrat",
                                            color: Color(0xff161616),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
            suffix: (keyboardType != TextInputType.emailAddress)
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        passVisible = !passVisible;
                      });
                    },
                    child: Icon(
                        passVisible ? Icons.visibility_off : Icons.visibility),
                  )
                : null,
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent)),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black45)),
            fillColor: const Color.fromARGB(255, 255, 251, 251),
            hoverColor: const Color(0xffF8F9FE),
            filled: true),
      ),
    );
  }
}

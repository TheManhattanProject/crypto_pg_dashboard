import 'package:dashboard/features/onbording/widgets/add_email_to_recevier_state.dart';
import 'package:dashboard/features/onbording/widgets/add_website_link_state.dart';
import 'package:dashboard/features/onbording/widgets/brand_name_state.dart';
import 'package:dashboard/features/onbording/widgets/check_box_with_title.dart';
import 'package:dashboard/features/onbording/widgets/confirm_pan_name_state.dart';
import 'package:dashboard/features/onbording/widgets/mobileOrEmail_state.dart';
import 'package:dashboard/features/onbording/widgets/name_state.dart';
import 'package:dashboard/features/onbording/widgets/otp_state.dart';
import 'package:dashboard/features/onbording/widgets/pannumber_state.dart';
import 'package:dashboard/features/onbording/widgets/review_tile.dart';
import 'package:dashboard/util/responsive.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatefulWidget {
  final bool isPhoneNumber;
  const OnBordingScreen({super.key, required this.isPhoneNumber});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  final TextEditingController _inputController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _panNumController = TextEditingController();
  final TextEditingController _brandNameController = TextEditingController();
  final TextEditingController _websiteLinkController = TextEditingController();
  int state = 0;
  bool onWebsite = false;
  bool onAndroid = false;
  bool onIos = false;
  bool onSocialMedia = false;
  bool onWhatsApp = false;
  bool onSwipeMachines = false;
  bool onOthers = false;
  bool businessType = false;

  @override
  void dispose() {
    // TODO: implement dispose
    _inputController.dispose();
    _otpController.dispose();
    _userNameController.dispose();
    _panNumController.dispose();
    _brandNameController.dispose();
    _websiteLinkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: const Color.fromARGB(255, 219, 219, 219),
        child: Row(
          mainAxisAlignment: isMobile
              ? MainAxisAlignment.center
              : MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (width > 992)
              const Padding(
                padding: EdgeInsets.only(top: 58.0, left: 58),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/icons/cryptocurrency.png"),
                      size: 28,
                    ),
                    Text(
                      "Cryptopay",
                      style: TextStyle(
                          color: Color(0xff072654),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.92,
              width: isMobile ? MediaQuery.sizeOf(context).width : 740,
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 34, left: 46.0, right: 30),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (state > 0) {
                                setState(() {
                                  state--;
                                  onAndroid = false;
                                  onIos = false;
                                  onOthers = false;
                                  onSocialMedia = false;
                                  onSwipeMachines = false;
                                  onWebsite = false;
                                  onWhatsApp = false;
                                });
                              } else {
                                Navigator.pop(context);
                              }
                            },
                            child: const Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 4.0),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Color(0xffA0A0A0),
                                    size: 12,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Back",
                                  style: TextStyle(
                                      color: Color(0xffA0A0A0),
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                          Wrap(
                            children: [
                              for (int i = 0; i < 4; i++)
                                Container(
                                  height: 6,
                                  width: 70,
                                  margin: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.green),
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  if (state == 0) mobileOrEmailState(controller: _inputController,isPhoneNumber: widget.isPhoneNumber),
                  if (state == 1) otpState(inputController: _inputController,otpController: _otpController),
                  if (state == 2) nameState(controller: _userNameController),
                  if (state == 3) helpUsBox(),
                  if (state == 4) addYourWebsiteLinkState(controller: _websiteLinkController),
                  if (state == 5) businessTypeState(),
                  if (state == 6) panNumberState(controller: _panNumController),
                  if (state == 7) confirmPanNameState(userNameController: _userNameController),
                  if (state == 8) brandNameState(controller: _brandNameController),
                  if (state == 9) addEmailToReceiverAccountUpdatedState(controller: _inputController),
                  if (state == 10) reviewBox(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 40, bottom: 20),
                    child: Row(
                      children: [
                        if (state == 4 || state == 7)
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 56,
                              child: TextButton(
                                onPressed: () {
                                  if (state == 7) {
                                    setState(() {
                                      state--;
                                    });
                                  } else {
                                    setState(() {
                                      state++;
                                    });
                                  }
                                },
                                child: Text(
                                  state == 7 ? "Edit PAN" : "AddLater",
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 32, 56, 235),
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: state == 4 || state == 7 ? 50.0 : 0),
                            child: SizedBox(
                              height: 56,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          const WidgetStatePropertyAll(
                                              Colors.blue),
                                      shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)))),
                                  onPressed: () {
                                    if (state == 0 &&
                                        _inputController.text.isNotEmpty) {
                                      setState(() {
                                        state++;
                                      });
                                    } else if (state == 1 &&
                                        _otpController.text.isNotEmpty) {
                                      setState(() {
                                        state++;
                                      });
                                    } else if (state == 2 &&
                                        _userNameController.text.isNotEmpty) {
                                      setState(() {
                                        state++;
                                      });
                                    } else if (state == 3 &&
                                        (onAndroid == true ||
                                            onIos == true ||
                                            onOthers == true ||
                                            onSocialMedia == true ||
                                            onSwipeMachines == true ||
                                            onWebsite == true ||
                                            onWhatsApp == true)) {
                                      setState(() {
                                        state++;
                                      });
                                    } else if (state == 5 ||
                                        state == 6 ||
                                        state == 7 ||
                                        state == 8 ||
                                        state == 9) {
                                      setState(() {
                                        state++;
                                      });
                                    }
                                  },
                                  child: Text(
                                    getButtionName(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Montserrat",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (width > 1120)
              Padding(
                padding: const EdgeInsets.only(right: 34, bottom: 54),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 90,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            padding:
                                const WidgetStatePropertyAll(EdgeInsets.zero),
                            backgroundColor:
                                const WidgetStatePropertyAll(Color(0xff072654)),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24))),
                            elevation: const WidgetStatePropertyAll(4),
                            shadowColor:
                                const WidgetStatePropertyAll(Color(0xff161616)),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.help_outline_rounded,
                                color: Color(0xffFFFFFF),
                                size: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Help",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "©2017-2024 ․",
                      style: TextStyle(
                        color: Color(0xffA0A0A0),
                        fontSize: 14,
                      ),
                    ),
                    if (width > 1265)
                      const Row(
                        children: [
                          TextButtons(text: "Terms of Use"),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "•",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 77, 77, 77)),
                            ),
                          ),
                          TextButtons(text: "Privacy policy"),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "•",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 77, 77, 77)),
                            ),
                          ),
                          TextButtons(text: "Support"),
                        ],
                      )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }

  Expanded reviewBox() {
    return Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 50,top: 60),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Review your details",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            reviewTile(
                              title: widget.isPhoneNumber
                                  ? "What's your mobile number?"
                                  : "What's your email address?",
                              value: _inputController.text,
                              isClickable: false,
                              onTap: () {},
                            ),
                            reviewTile(
                              title: "What's your name?",
                              value: _userNameController.text,
                              isClickable: true,
                              onTap: () {
                                setState(() {
                                  state = 2;
                                });
                              },
                            ),
                            reviewTile(
                              title:
                                  "Where do you plan to use Cryptopay for collecting payments?",
                              value: "On my Website",
                              isClickable: true,
                              onTap: () {
                                setState(() {
                                  state = 3;
                                });
                              },
                            ),
                            reviewTile(
                              title: "What's your business type?",
                              value: "Individual",
                              isClickable: true,
                              onTap: () {
                                setState(() {
                                  state = 5;
                                });
                              },
                            ),
                            reviewTile(
                              title: "What's your personal PAN number?",
                              value: _panNumController.text,
                              isClickable: false,
                              onTap: () {
                              },
                            ),
                             reviewTile(
                          title:"What's the name on your PAN?",
                          value: _userNameController.text,
                          isClickable: false,
                          onTap: (){
                          },
                        ),
                         reviewTile(
                          title:"What's your brand name?",
                          value: _brandNameController.text,
                          isClickable: true,
                          onTap: (){
                             setState(() {
                              state = 8;
                            });
                          },
                        ),
                         reviewTile(
                          title:"What's your email?",
                          value: "cryptoPay@gmail.com",
                          isClickable: true,
                          onTap: (){
                          },
                        ),
                          ],
                        ),
                      ),
                    ),
                  );
  }

 
 

  
  
 

  Expanded businessTypeState() {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 60, right: 50, top: 120),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What's your business type?",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const Text(
              "Pick only one that applies to your business",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45),
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              children: [
                Text(
                  "INDIVIDUAL BUSINESS ",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
                Icon(
                  Icons.info_outline_rounded,
                  color: Colors.black45,
                  size: 16,
                )
              ],
            ),
            businessTypeCont(text: "Individual"),
            const SizedBox(
              height: 24,
            ),
            const Row(
              children: [
                Text(
                  "REGISTERED BUSINESS ",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
                Icon(
                  Icons.info_outline_rounded,
                  color: Colors.black45,
                  size: 16,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                businessTypeCont(text: "Proprietorship"),
                businessTypeCont(text: "Partnership"),
                businessTypeCont(text: "Private Limited")
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                businessTypeCont(text: "Public Limited"),
                businessTypeCont(text: "LLP"),
                businessTypeCont(text: "Trust"),
                businessTypeCont(text: "Society"),
                businessTypeCont(text: "HUF"),
              ],
            )
          ],
        )),
      ),
    );
  }

  GestureDetector businessTypeCont({required String text}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          businessType = !businessType;
        });
      },
      child: Container(
        height: 40,
        margin: const EdgeInsets.only(top: 10, left: 10),
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(12),
            color: businessType
                ? const Color.fromARGB(255, 30, 57, 239)
                : Colors.transparent),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: businessType ? Colors.white : Colors.black),
        ),
      ),
    );
  }

 

  Expanded helpUsBox() {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 60, right: 50, top: 120),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Where do you plan to use Razorpay for collecting payments?",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "This will help us recommend products you can to get started",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38),
              ),
              const SizedBox(
                height: 24,
              ),
              CheckBoxWithTitle(
                title: "On my Website",
                onChanged: (value) {
                  onWebsite = value;
                },
              ),
              CheckBoxWithTitle(
                title: "On my Android app",
                onChanged: (value) {
                  onAndroid = value;
                },
              ),
              CheckBoxWithTitle(
                title: "On my IOS app",
                onChanged: (value) {
                  onIos = value;
                },
              ),
              CheckBoxWithTitle(
                title: "On social media like Facebook and instagram",
                onChanged: (value) {
                  onSocialMedia = value;
                },
              ),
              CheckBoxWithTitle(
                title: "On WatsApp,SMS, or email",
                onChanged: (value) {
                  onWhatsApp = value;
                },
              ),
              CheckBoxWithTitle(
                title: "Card Swipe Machines for In-Person Payments",
                onChanged: (value) {
                  onSwipeMachines = value;
                },
              ),
              CheckBoxWithTitle(
                title: "Others",
                onChanged: (value) {
                  onOthers = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

 
 
  String getButtionName() {
    if (state == 0) {
      return "SubmitOTP";
    } else if (state == 1) {
      return "Send OTP";
    } else if (state >= 2 && state <= 6 ||
        state == 8 ||
        state == 9) {
      return "Continue";
    } else if (state == 7) {
      return "Yes, confirm";
    } else if (state == 10) {
      return "Done";
    }
    return "";
  }
}

class TextButtons extends StatefulWidget {
  final String text;
  const TextButtons({super.key, required this.text});

  @override
  State<TextButtons> createState() => TextButtonsState();
}

class TextButtonsState extends State<TextButtons> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onHover: (value) {
        _onHover(value);
      },
      onPressed: () {},
      style: const ButtonStyle(
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
          padding: WidgetStatePropertyAll(EdgeInsets.zero)),
      child: Text(
        widget.text,
        style: TextStyle(
            color: isHover
                ? const Color.fromARGB(255, 32, 98, 240)
                : const Color.fromARGB(255, 77, 77, 77),
            decorationColor: isHover
                ? const Color.fromARGB(255, 32, 98, 240)
                : const Color.fromARGB(255, 77, 77, 77),
            fontSize: 14,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w300),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      isHover = isHovered;
    });
  }
}


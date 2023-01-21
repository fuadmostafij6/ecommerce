import 'package:e_commercefullproject/screen/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);
  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFF7972e6),
      ),
      backgroundColor: Color(0XFFdfe0e4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                AnimatedContainer(
                  curve: Curves.ease,
                  height: MediaQuery.of(context).size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFF7972e6),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25))),
                  duration: Duration(seconds: 5),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(height: 10,),
                          Text("Enter OTP",style: GoogleFonts.aladin(
                              textStyle: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFFd9d2fe)))),
                          Text("Sent Your ******  ",style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFFd9d2fe))))

                        ],
                      ),
                    ),
                  ),
                ),
                // Positioned(
                //     top: 10,
                //     left: 50,
                //     right: 50,
                //     child: Container(
                //       height: 150,
                //       width: 80,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(15),
                //           image: DecorationImage(
                //               image: AssetImage(
                //                 "images/shoping-removebg-preview.png",
                //               ),
                //               fit: BoxFit.fill)),
                //     )),
                Positioned(
                    right: 20,
                    left: 20,
                    top: 110,
                    child: Container(
                        height: size.height * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5,right: 5),
                                child: OTPTextField(
                                  contentPadding: EdgeInsets.symmetric(vertical: 4),
                                  length: 6,
                                  fieldWidth: 40,
                                  width: MediaQuery.of(context).size.width,
                                  style: TextStyle(
                                      fontSize: 12
                                  ),
                                  // textFieldAlignment: MainAxisAlignment.spaceBetween,
                                  fieldStyle: FieldStyle.box,
                                  onCompleted: (pin) {
                                    print("Completed: " + pin);
                                  },
                                ),
                              ),
                              SizedBox(height: 30,),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 10, right: 10),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFf7972e6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Center(
                                        child: Text(
                                          "Submit",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ))
                              ),
                              SizedBox(height: 10),
                              RichText(
                                  text:TextSpan(
                                    text: "Not Received Code?",
                                    style:TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 13) ,
                                    children: [
                                     TextSpan(
                                         text: " Resent",
                                         style:TextStyle(
                                             fontWeight: FontWeight.bold,
                                             color: Color(0XFF7972e6),
                                             fontSize: 15)
                                     )
                                    ]
                                  )

                              ),

                            ])))
              ],
            ),

          ],
        ),
      ),
    );
  }

}

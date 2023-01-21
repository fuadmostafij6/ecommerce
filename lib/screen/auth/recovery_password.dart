import 'package:e_commercefullproject/screen/auth/otp_sceen.dart';
import 'package:e_commercefullproject/screen/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecoveryPassword extends StatefulWidget {
  const RecoveryPassword({Key? key}) : super(key: key);
  @override
  State<RecoveryPassword> createState() => _RecoveryPasswordState();
}

class _RecoveryPasswordState extends State<RecoveryPassword> {

  final TextEditingController emailecoverycontrollar=TextEditingController();
  final TextEditingController phonerecoverycontrollar=TextEditingController();

  bool checks=false ;
  bool checks2=false ;

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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 10,),
                        Text("Recover Your Password",style: GoogleFonts.aladin(
                            textStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFFd9d2fe)))),
                        Text("Sing In Discover Amazing thing Near\n Around you",style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFFd9d2fe))))

                      ],
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
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: TextField(
                                    controller:emailecoverycontrollar,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      filled: true,
                                      fillColor: Color(0xFFefefef),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide:BorderSide(color:Colors.white60)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide:BorderSide(
                                              color: Colors.white60,
                                              width: 1
                                          )
                                      ),
                                        suffixIcon: Checkbox(
                                            value: checks2,
                                            onChanged: ( bool? value){
                                              setState(() {
                                                checks2= !checks2;
                                              });
                                              print(checks2);
                                            })
                                    ),

                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: TextField(
                                    controller:phonerecoverycontrollar,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: 'Phone',
                                      filled: true,
                                      fillColor: Color(0xFFefefef),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide:BorderSide(color:Colors.white60)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide:BorderSide(
                                              color: Colors.white60,
                                              width: 1
                                          )
                                      ),
                                      suffixIcon: Checkbox(
                                          value: checks,
                                          onChanged: ( bool? value){
                                            setState(() {
                                              checks= !checks;
                                            });
                                            print(checks);
                                          })
                                    ),

                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 10, right: 10),
                                child:checks2 || checks? Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFf7972e6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Center(
                                        child: Text(
                                          "Recovery Password",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )):Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Center(
                                        child: Text(
                                          "Recovery Password",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )),
                              ),
                              // SizedBox(height: 10),
                              // Text("Forgot Password?", style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     color: Color(0XFF7972e6),
                              //     fontSize: 12),)
                              //

                            ])))
              ],
            ),
            SizedBox(height: 200,),
            Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_)=>OtpPage()));

                },
                child: Text(
                  "SKIP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFa3a3a3),
                      fontSize: 23),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}

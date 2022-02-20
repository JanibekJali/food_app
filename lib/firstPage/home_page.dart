import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final style = TextStyle(fontSize: 17, color: Colors.white);
  final style2 =
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);
  final style3 = TextStyle(
      fontSize: 13, color: Colors.white, fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/Images/anatoli.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20)
            .copyWith(top: 25),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Log In',
                      // style: TextStyle(
                      //     fontSize: 17, color: Colors.white, fontFamily: 'Redressed'),
                      style: GoogleFonts.rubik(
                        textStyle: style,
                      ),
                    ),
                  ),
                  const Image(
                    image: AssetImage('assets/Images/vilka.png'),
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Seve Time',
                    style: GoogleFonts.dancingScript(
                      textStyle: style2,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Discover the best foods from\never 2000 restaurants',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.gideonRoman(
                      textStyle: style3,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                    label: const Text(
                      'Continue with Facebook',
                      style: TextStyle(fontSize: 15),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(40),
                      backgroundColor: Colors.white,
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sing up with email',
                    style: TextStyle(fontSize: 15),
                  ),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                    primary: Colors.white,
                    side: const BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 23.5,
                ),
                Text(
                  'By singing up you agree to our Terms of Use\nand Privacy Policy',
                  textAlign: TextAlign.center,
                  style: style3,
                )
              ],
            ))
          ],
        ),
      )),
    );
  } // style: TextStyle(
  //     fontSize: 17, color: Colors.white, fontFamily: 'Redressed'),
  // style: GoogleFonts.rubik(
  //   textStyle: style,
  // ),
}

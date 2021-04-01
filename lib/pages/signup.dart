import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //bool loading = false;
  String gender;
  String groupValue = "male";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: DrawClip(),
                    child: Container(
                      height: size.height / 2.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xff8CDBC4),
                        Color(0xffBBD1F0),
                        Color(0xffffc371)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                    ),
                  ),
                  Container(
                      height: size.height / 2.4,
                      width: double.infinity,
                      child: Image.network(
                        'https://cdn.iconscout.com/icon/free/png-256/grab-282266.png',
                        height: 150.0,
                        width: 150.0,
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Text(
                  "SIGN UP",
                  style: GoogleFonts.mukta(
                      color: Color(0xff15BAB3),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      fillColor: Colors.grey[200],
                      hintText: 'Full Name',
                      filled: true),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      fillColor: Colors.grey[200],
                      hintText: 'Email Address',
                      filled: true),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: new Container(
                  color: Colors.grey[200],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: ListTile(
                        title: Text(
                          "male",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue),
                        ),
                        trailing: Radio(
                            value: "male",
                            groupValue: groupValue,
                            onChanged: (e) => ValueChanged(e)),
                      )),
                      Expanded(
                          child: ListTile(
                        title: Text(
                          "female",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue),
                        ),
                        trailing: Radio(
                            value: "female",
                            groupValue: groupValue,
                            onChanged: (e) => ValueChanged(e)),
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      fillColor: Colors.grey[200],
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      filled: true),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      fillColor: Colors.grey[200],
                      hintText: 'Confirm Password',
                      suffixIcon: Icon(Icons.remove_red_eye),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      filled: true),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: MaterialButton(
                  onPressed: () {},
                  // => handleSignIn(),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff15BAB3),
                          borderRadius: BorderRadius.circular(8)),
                      height: 50,
                      child: Center(
                          child: Text(
                        "Register",
                        style: GoogleFonts.mukta(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "OR",
                  style: GoogleFonts.mukta(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 108.0, right: 80.0, bottom: 2.0, top: 2.0),
                child: Container(
                    height: 60.0,
                    width: 200.0,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR20Wl95JCVcyQ4b4dbpwOib99mRE2l_6tvA&usqp=CAU')),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.mukta(
                          fontSize: 18,
                          color: Color(0xff15BAB3),
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  ValueChanged(e) {
    setState(() {
      if (e == "male") {
        groupValue = e;
      } else if (e == "female") {
        groupValue = e;
      }
    });
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.1, size.height - 50);
    path.lineTo(size.width * 0.9, size.height - 50);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

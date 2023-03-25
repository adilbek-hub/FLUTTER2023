import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_with_for_loop/model.dart';
import 'package:login_page_with_for_loop/second_page.dart';
import 'package:login_page_with_for_loop/theme/app_styles.dart';

final studentter = <Student>[daniar, dinara, hanzada, mirbek, aybek];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _email;
  /*void controlNameEmail(String name, String email) {
    //name == Aybek //email == aybek@mail
    int index = 0;
    for (final student in studentter) {
      //index == 0;
      //student == hanzada
      index++;
      //index = 1;
      if (_name == student.name && _email == student.email) {
        //name != daniar   //email != daniar@mail
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(
              student: student,
            ),
          ),
        );
        break;
      } else {
        if (index == studentter.length) {
          //index == 0 //studentter.length == 5
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Kechiresiz atyniz je pochta tuura emes'),
          ));
        } else {
          continue;
        }
      }
    }
  }*/
// Логиканын экинчи ваианты
  void controlNameEmail2(String name, String email) {
    //phone  = 05000000             // email = aybek@email
    // i = 0;            studentter.length = 5
    for (int i = 0; i <= studentter.length; i++) {
      //i = 0
      if (_name == studentter[i].name && _email == studentter[i].email) {
        //studentter[0] =  daniar(0500544554, daniar@mail)
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(
              student: studentter[i],
            ),
          ),
        );
        break;
      } else {
        // i == 0   studentter.length = 7
        if (i == studentter.length - 1) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Kechiresiz atyniz je pochta tuura emes'),
          ));
          break;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LoginPage'.toUpperCase()),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bgcApp.jpg"), fit: BoxFit.cover),
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(99, 14, 33, 23),
            ),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FlutterLogo(
                      size: 80,
                    ),
                    Text(
                      'Flutter',
                      style: GoogleFonts.fleurDeLeah(
                        textStyle: AppStyles.textStyles,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Welcome To Saifty!',
                  style: GoogleFonts.rubikBeastly(
                    textStyle: AppStyles.textStyles2,
                  ),
                ),
                Text(
                  'Keep your data safe!',
                  style: GoogleFonts.sacramento(
                    textStyle: AppStyles.textStyles3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(
                    style: GoogleFonts.rampartOne(
                        color: Colors.white, fontSize: 25),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amberAccent),
                      ),
                      labelText: 'Name',
                      labelStyle: GoogleFonts.pacifico(color: Colors.white54),
                    ),
                    onChanged: (String value) {
                      _name = value;
                      print("Value: $value");
                      print("Name: $_name");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(
                    style: GoogleFonts.unifrakturMaguntia(
                        color: Colors.white, fontSize: 25),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amberAccent),
                      ),
                      labelText: 'Gmail',
                      labelStyle: GoogleFonts.pacifico(color: Colors.white54),
                    ),
                    onChanged: (String value) {
                      _email = value;
                      print("Value: $value");
                      print("Email: $_email");
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 40),
                  ),
                  onPressed: () {
                    if (_name != null && _email != null) {
                      controlNameEmail2(_name!, _email!);
                    }
                  },
                  child: const Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {},
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final loginButton = Material(

      elevation: 6,
      borderRadius: BorderRadius.circular(40),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Text(
          'Sign in',
          style: GoogleFonts.montserrat(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        minWidth: MediaQuery.of(context).size.width,
      ),
    );

    final txtField1 = TextField(
    
      textInputAction: TextInputAction.next,
      obscureText: false,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Email',
        border: OutlineInputBorder( borderRadius: BorderRadius.circular(40),),
      ),
    );

    final txtField2 = TextField(
      obscureText: true,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40),),
      ),
    );

    final  img1 = Image.asset(
      'assets/1.png',
    );
    final img2 = CircleAvatar(
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1487243528516-7fa712e910f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80'),
      radius: 100.0,
      backgroundColor: Colors.transparent,
    );

    return Scaffold(
      
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    img1,
                    SizedBox(height: 30.0,),
                    txtField1,
                    SizedBox(height: 10.0,),
                    txtField2,
                    SizedBox(height: 20.0,),
                    Container(
                      width: 200.0,
                      child: loginButton),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child: Text(
                            'forgot password?',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
               SizedBox(height: 50.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have account?',style: GoogleFonts.montserrat(
                          fontSize: 15,
                        ),),
                    TextButton(
                      onPressed: () {},
                      child: Text('Sign up',style: GoogleFonts.montserrat(
                          fontSize: 15,
                        ),),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:mobile_child_abusea_pp/reportPages/report.dart';
import 'registrationPage.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    bool _showPassword=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(
           children:[
             Container(
               width: double.infinity,
               height: 550,
               decoration: BoxDecoration(
               color:Colors.blue[900],
                   borderRadius:BorderRadius.only(
                   bottomRight: Radius.circular(180), bottomLeft:Radius.circular(2))
              ),
                  child:Padding(
                    padding:EdgeInsets.only(left:0, top: 80),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text("SignIn",
                            style:TextStyle(color:Colors.white,
                            fontSize:45,
                            fontFamily:"AnonymousPro",
                            fontWeight:FontWeight.bold)),
                          SizedBox(height: 100,),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child:Container(
                              decoration:BoxDecoration(
                                border:Border.all(color:Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child:Padding(
                                padding:EdgeInsets.only(left: 20),
                                child:  TextFormField(
                                  decoration: InputDecoration(
                                      border:InputBorder.none,
                                      hintText: "Emails",
                                      hintStyle: TextStyle(color:Colors.white),
                                      icon:Icon(Icons.email,color:Colors.white)
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.all(10),
                            child:Container(
                              decoration:BoxDecoration(
                                border:Border.all(color:Colors.white),
                                borderRadius:BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding:EdgeInsets.only(left:20),
                                child: TextFormField(
                                  obscureText: !this._showPassword,
                                  decoration:InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "password",
                                    hintStyle:TextStyle(color:Colors.white),
                                    icon:Icon(Icons.lock,color:Colors.white),
                                    suffixIcon: IconButton(
                                        icon:Icon(Icons.remove_red_eye,
                                            color: this._showPassword ? Colors.red:Colors.white),
                                        onPressed:(){
                                          setState(()=> this._showPassword = !this._showPassword);
                                        }),
                                  ),
                                ),
                              ),
                            ),
                          ),


                          Padding(
                            padding: EdgeInsets.all(10),
                            child:Container(
                              height:45,
                              width:150,
                              decoration:BoxDecoration(
                                color:Colors.white,
                                border:Border.all(color:Colors.black87),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: FlatButton(
                                child:Text("LogIn", style:TextStyle(color:Colors.blue[900])),
                                onPressed: (){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder:(context)=> Report(),
                                    ),
                                  );
                                },
                                //padding:EdgeInsets.all(10),
                              ),
                            ),
                          ),

                          MaterialButton(
                            onPressed:(){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder:(context)=> Register(),
                                ),
                              );
                            },
                            child: Text("Click here to Register",
                                style:TextStyle(fontSize: 15, fontWeight:FontWeight.bold, color:Colors.white)),
                          ),

                  ]
                  ),
          //
                  ),
                ),


             Padding(
               padding:EdgeInsets.all(10),
                child: FlatButton(
                padding: EdgeInsets.all(10),
                onPressed: () {  },
                child:Row(

                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children:<Widget>[
                      IconButton(
                          icon: Icon(FontAwesomeIcons.google, color:Color(0xffff2fc3),size:40),
                          onPressed:(){
                            print("enter google UserName and password");
                      },),
                      IconButton(
                        icon: Icon(
                            FontAwesomeIcons.facebook, color:Colors.blue, size:40),
                        onPressed:(){
                          print("You can enter facebook username and password");
                        }),
                      SizedBox(width: 5,),

                    ]
                )
            ),
          ),



        Center(
            child:Column(
                children:<Widget>[
                  MaterialButton(
                    onPressed:(){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:(context)=> Register(),
                        ),
                      );
                    },
                    child:Text("Don't have an account ?"),
                  ),

                  SizedBox(height: 10),
                  MaterialButton(
                    child:Text("forgotten Password"),
                  onPressed:(){
                      print("Retrieve Password");
                  }
                  ),
                ]
            )

        ),

        ]
    )
      ),

    );
  }
}
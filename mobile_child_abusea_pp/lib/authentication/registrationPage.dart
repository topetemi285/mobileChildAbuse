import 'package:flutter/material.dart';
import 'loginPage.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _showPassword=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color:Colors.blue[900],
                    borderRadius:BorderRadius.only(bottomRight: Radius.circular(250))
                ),
                child:Padding(
                  padding:EdgeInsets.only(left:30, top: 80),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Text("SignUp",
                            style:TextStyle(color:Colors.white,
                                fontSize:45,
                                fontFamily:"AnonymousPro",
                                fontWeight:FontWeight.bold)),
                       ]
                  ),
                  //
                ),
              ),
              SizedBox(height:30,),
              CircleAvatar(
                backgroundColor:Colors.white10,
                radius:80,
               child:IconButton(
                 icon: Icon(
                     Icons.add_a_photo_rounded,color:Colors.grey,size:80), onPressed: () {  },)
                ),
              Padding(
                padding: EdgeInsets.only(top: 0.0,left:30),
                child: Text("upload image",
                    style: TextStyle(
                        fontSize: 20,
                        color:Colors.grey,
                      // fontFamily: "Itim",
                        )),
              ),
              SizedBox(height:60,),
              Padding(
                padding:EdgeInsets.all(20),
                child:Container(
                  decoration:BoxDecoration(
                    border:Border.all(color:Colors.black38),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  child:Padding(
                    padding:EdgeInsets.only(left: 0,),
                    child:TextFormField(
                      decoration:InputDecoration(
                          border:InputBorder.none,
                          hintText:"Name",
                          icon:Icon(Icons.person)
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding:EdgeInsets.all(20),
                child:Container(
                  decoration:BoxDecoration(
                    border:Border.all(color:Colors.black38),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  child:Padding(
                    padding:EdgeInsets.only(left: 0,),
                    child:TextFormField(
                      decoration:InputDecoration(
                          border:InputBorder.none,
                          hintText:"Email",
                          icon:Icon(Icons.email)
                      ),
                    ),
                  ),
                ),
              ),

              RadioListTile(
                    title:Text("Male"),
                  ),
              RadioListTile(
                      title:Text("Female")
                  ),
        
              Padding(
                padding:EdgeInsets.all(20),
                child:Container(
                  decoration:BoxDecoration(
                    border:Border.all(color:Colors.black38),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  child:Padding(
                    padding:EdgeInsets.only(left: 0,),
                    child:TextFormField(
                      decoration:InputDecoration(
                          border:InputBorder.none,
                          hintText:"phone Number",
                          icon:Icon(Icons.call)
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:EdgeInsets.all(20),
                child:Container(
                  decoration:BoxDecoration(
                    border:Border.all(color:Colors.black38),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  child:Padding(
                    padding:EdgeInsets.only(left: 0,),
                    child:TextFormField(
                      obscureText:!this._showPassword,
                      decoration:InputDecoration(
                        border:InputBorder.none,
                        hintText:"Password",
                        icon:Icon(Icons.lock),
                        suffixIcon: IconButton(
                            icon:Icon(Icons.remove_red_eye,
                                color: this._showPassword ? Colors.blue:Colors.grey),
                            onPressed:(){
                              setState(()=> this._showPassword = !this._showPassword);
                            }
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20),
                child:Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    border:Border.all(color:Colors.grey),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  child:FlatButton(
                      onPressed:(){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder:(context)=> LoginPage(),
                          ),
                        );
                      },
                      child: Text("Register", style:TextStyle(fontSize: 20, color:Colors.white))
                  ),
                ),
              ),


             ]
          )
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import  'drawer.dart';
import 'dart:io';
class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
 File imageFile;

//  openGallary() async{
//    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
//    this.setState(() {
//      imageFile=picture;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOBILE RAPE REPORTING SYSTEM"),
        backgroundColor: Colors.blue[900],
      ),
      drawer:MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Text("To make immediate report tab on the send button \n also you can report after event by taking a picture of the suspect and comment below"
                  ),
                ),
              ),

              Padding(
                  padding:EdgeInsets.all(10),
                  child:Container(
                      decoration:BoxDecoration(
                        border:Border.all(color: Colors.black),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      child:Padding(
                          padding:EdgeInsets.only(left:20),
                          child:TextFormField(
                              decoration:InputDecoration(
                                border: InputBorder.none,
                                hintText:"Nature of the abuse",
                              )
                          )
                      )
                  )
              ),
              Padding(
                  padding:EdgeInsets.all(10),
                  child:Container(
                      decoration:BoxDecoration(
                        border:Border.all(color: Colors.black),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      child:Padding(
                          padding:EdgeInsets.only(left:20),
                          child:TextFormField(
                              decoration:InputDecoration(
                                border: InputBorder.none,
                                hintText:"Description of the scence",
                              )
                          )
                      )
                  )
              ),
              Padding(
                  padding:EdgeInsets.all(10),
                  child:Container(
                      decoration:BoxDecoration(
                        border:Border.all(color: Colors.black),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      child:Padding(
                          padding:EdgeInsets.only(left:20),
                          child:TextFormField(
                              decoration:InputDecoration(
                                border: InputBorder.none,
                                hintText:"Committed by who:",
                              )
                          )
                      )
                  )
              ),
              Padding(
                  padding:EdgeInsets.all(10),
                  child:Container(
                      decoration:BoxDecoration(
                        border:Border.all(color: Colors.black),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      child:Padding(
                          padding:EdgeInsets.only(left:20),
                          child:TextFormField(
                              decoration:InputDecoration(
                                border: InputBorder.none,
                                hintText:"Number of person",
                              )
                          )
                      )
                  )
              ),            
             
              Padding(
                  padding:EdgeInsets.all(10),
                  child:Container(
                      decoration:BoxDecoration(
                        border:Border.all(color: Colors.black),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      child:Padding(
                          padding:EdgeInsets.only(left:20),
                          child:TextFormField(
                              decoration:InputDecoration(
                                border: InputBorder.none,
                                hintText:"Address",
                              )
                          )
                      )
                  )
              ),            
              Row(
                children:[
                  
                      Container(
                        //padding: EdgeInsets.symmetric(vertical: 50),
                        child: IconButton(
                            icon: Icon(Icons.add_a_photo_rounded, size: 40, color:Colors.indigo[900]),
                            onPressed: () {
                              //openGallary();
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) => CameraApp(),
                              //   ),
                              // );
                            },
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.all(20),
                        child: IconButton(
                            icon: Icon(Icons.send, size: 40, color:Colors.indigo[900]),
                            onPressed:(){
                              print("Sending Reports");
                            }
                        ),
                      ),

                    ]
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
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder:(context)=> LoginPage(),
                        //   ),
                        // );
                      },
                      child: Text("Report", style:TextStyle(fontSize: 20, color:Colors.white))
                  ),
                ),
              ),
                ]
              ),



              // MaterialButton(
              //   onPressed: () {
              //     Navigator.of(context).push(
              //       MaterialPageRoute(
              //         builder: (context) => RegistrationPage(),
              //       ),
              //     );
              //   },
              //
              // ),

            
      ),
    );
  }
}
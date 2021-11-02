import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:image_picker/image_picker.dart';
import  'drawersFiles/drawer.dart';
import 'dart:io';
class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  TextEditingController _nature = new TextEditingController();
   TextEditingController _address = TextEditingController();
   TextEditingController _description = TextEditingController();
   TextEditingController _person =TextEditingController();
   TextEditingController _doi =TextEditingController();
 File imageFile;
 final picker = ImagePicker();

 openGallary() async{
   var picture = await await picker.getImage(source: ImageSource.camera);
   this.setState(() {
     if (picker != null) {
        imageFile = File(picture.path);
      } else {
        print('No image selected.');
      }
   });
 }
final types = ["Physical Abuse","Sexual Abuse","Emotional Abuse","Neglect Abuse"];
final age = ["0-10","11-15","15-18"];
String valuetypes;
String ageValue;
 DropdownMenuItem<String>buildMenuItem(String item)=>
    DropdownMenuItem(
      value: item,
      child: Text(
        item,
       // style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20 ),
      ),);
DropdownMenuItem<String>buildMenuAge(String age)=>
    DropdownMenuItem(
      value: age,
      child: Text(
        age,
        
      ),);

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
              Text("Nature of Abuse"),
              Container(
                margin: EdgeInsets.only(left:16, right: 16, bottom: 16),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1)),
                 child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: valuetypes,
                    isExpanded: true,
                    icon: Icon(Icons.arrow_downward),
                    items: types.map(buildMenuItem).toList(),
                    onChanged: (value)=> 
                    setState(()=>
                    this.valuetypes = value,
                     ) 
                    ),
                ),
              ),
 
              Text("Gender:"),
            
              RadioListTile(
                 title:Text("Male"),
                  ),
              RadioListTile(
                      title:Text("Female")
                  ),
                
              

              Text("Age Range of victim:"),
              Container(
                margin: EdgeInsets.only(left:16, right: 16, bottom: 16),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1)),
                 child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: ageValue,
                    isExpanded: true,
                    icon: Icon(Icons.arrow_downward),
                    items: age.map(buildMenuAge).toList(),
                    onChanged: (value)=> 
                    setState(()=>
                    this.ageValue = value,
                     ) 
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
                                hintText:"Address",
                              )
                          )
                      )
                  )
              ), 
                          Padding(
                              padding: EdgeInsets.all(8.0),
                              child:DateTimePicker(
                              initialValue: '',
                              type: DateTimePickerType.date,
                              dateLabelText: 'Date of event',
                              firstDate: DateTime(2020),
                              lastDate: DateTime.now().add(Duration(days: 365)),
                              validator: (value){
                                return null;
                              },
                              onChanged: (value){
                                if(value.isNotEmpty){
                                    setState((){
                                      _doi = value as TextEditingController;
                                  });
                                }
                              },
        
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        controller: _description,
                        maxLines: 3,
                            // ignore: missing_return
                        validator: (input){
                            if(input.isEmpty)
                                return 'Enter Description';  
                                   },

                            decoration: InputDecoration( 
                              
                              labelText: 'Description',
                                  )      //onSaved: (input)=>_email=input,
                                  ),
                              ),
                               ),
              ),      
              Row(
                children:[
                  
                      Container(
                        //padding: EdgeInsets.symmetric(vertical: 50),
                        child: IconButton(
                            icon: Icon(Icons.add_a_photo_rounded, size: 40, color:Colors.indigo[900]),
                            onPressed: () {
                              openGallary();
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
import 'package:elearning/signin.dart';
import 'package:flutter/material.dart';

class button extends StatefulWidget {
  String name;

   button({
    required this.name,
    
    super.key});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
        final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
child: ElevatedButton(

  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.grey,
    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30))
  ),
  
  onPressed:() {

    if (widget.name=="Sign In") {

      Navigator.of(context).push(MaterialPageRoute(builder:(context) {
        return Signin();
      },));
      
    } else {
      
    }
  
}, child:Text(widget.name,style: TextStyle(color:const Color.fromARGB(255, 255, 255, 255),fontSize: width/21.81,fontWeight: FontWeight.bold),)),
    );
  }
}
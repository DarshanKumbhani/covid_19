import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text("niger",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 250,
                  child: Image.asset("assets/images/niger.png",fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Text("All Cases         :-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 10,),
                  Text("9,931",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Active cases   :-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 10,),
                  Text("23",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Discharge        :-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 10,),
                  Text("8,890",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Death               :-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 10,),
                  Text("312",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:covid_19/provider/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Home_pro? pf;
Home_pro? pt;

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    pf = Provider.of<Home_pro>(context, listen: false);
    pt = Provider.of<Home_pro>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Covid 19",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:3,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,

                ),
                itemBuilder: (context, index) {
                  return flag(index);
                },itemCount: pf!.l1.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget flag(int index) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("${pt!.l1[index]}",fit: BoxFit.cover,),),
    );
  }
}

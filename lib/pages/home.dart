import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        
        body: Container(
          decoration: const BoxDecoration(
            backgroundBlendMode: BlendMode.srcOver,
            color: Color(0xfff3fbfc),
            image: DecorationImage(
            
            image: AssetImage("assets/images/Doctors.png"),
            fit: BoxFit.contain,
          ),
          ),
          child: Column(
            children: [
              Container(
                height: 80,
                child: Row(
                  children: [
                    Image.asset('assets/images/patientlogo.png'),
                    Container(
                      padding: const EdgeInsets.fromLTRB(25, 20, 10, 15),
                      child: Column(children: const [
                        Text("Zendenta Sumampir", style: TextStyle(fontSize: 20),),
                        Text("Purwokerto")
                      ]),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text("Fri, 20 Dec",style: TextStyle(color: Color(0xFF0c54fc), fontSize: 18),),
                  const SizedBox(height: 4,),
                  const Text("Hi Konchellah, Good Morning!",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
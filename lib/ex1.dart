import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.grey[300],
          padding: EdgeInsets.all(40),

          child: Column(
           
            children: [
              
              HobbyCard(title: 'Travelling', icon: Icons.travel_explore,),
              HobbyCard(title: 'Skating', icon: Icons.skateboarding, color: const Color.fromARGB(255, 241, 79, 79),),
              HobbyCard(title: 'Hiking', icon: Icons.hiking, color: Colors.lightGreen,),
            ],
          ),
        )
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  

  const HobbyCard({super.key ,required this.title,required this.icon,this.color = Colors.blue });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: color),
      
      child: Center(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, right: 20, top: 30, bottom: 30),
        
              child: Icon(
                icon,
              ),
            ),
    
            Text(title)
          ],
        ),
      ),
    );
  }
}



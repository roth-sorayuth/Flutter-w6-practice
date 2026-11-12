import 'package:flutter/material.dart';

enum LocationWeather {
  phnomPenh(
    image: 'assets/ex4/cloudy.png',
    title: 'Phnom Penh',
    min: 'Min 10°C',
    max: 'Max 20°C',
    temperature: '12.2°',
    
  ),

  paris(
    image: 'assets/ex4/sunny.png',
    title: 'Paris',
    min: 'Min 10°C',
    max: 'Max 20°C',
    temperature: '12.2°',
    color: Colors.green,
  ),
  madrid(
    image: 'assets/ex4/sunnyCloudy.png',
    title: 'Madrid',
    min: 'Min 10°C',
    max: 'Max 20°C',
    temperature: '12.2°',
    color: Colors.red,
  ),
  munich(
    image: 'assets/ex4/veryCloudy.png',
    title: 'Munich',
    min: 'Min 10°C',
    max: 'Max 20°C',
    temperature: '12.2°',
    color: Colors.deepOrangeAccent,
  );

  
  final String title;
  final String temperature;
  final String min;
  final String max;
  final Color color;
  final String image;

  const LocationWeather({
    required this.title,
    required this.max,
    required this.min,
    required this.temperature,
    required this.image,
    this.color = Colors.purple,
  });
}


void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: <Widget>[
            Container(
              height: 60,
              color: Colors.red,
              padding: EdgeInsets.all(20),
              child:  Row(

                children: [
                  Expanded(child: SizedBox()),
                  Icon(Icons.menu)
                ],
              ),
            ),

             ...LocationWeather.values.map(
              (location) => Weather(locationWeather: location),
             )


            // card
          ],
        ),
       
      ),
    )
  );
}

class Weather extends StatelessWidget {
  const Weather({
    super.key, required this.locationWeather
  });

 final LocationWeather locationWeather;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: locationWeather.color,
      
     child: Container(
      padding: EdgeInsets.all(20),
       child: Row(
        
        children: [
          Container(
            padding: EdgeInsets.all(20),
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white),
            child: Image.asset(locationWeather.image, width: 60)
          ),
    
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(locationWeather.title),
              Text(locationWeather.max),
              Text(locationWeather.min),
    
            ],
          ),
          Expanded(child: SizedBox(),),
    
          Container(
            padding: EdgeInsets.all(20),
            child: Text(locationWeather.temperature),
          )
        ],
      ),
     ),
    );
  }
}


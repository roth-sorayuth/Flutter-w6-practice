import 'package:flutter/material.dart';

enum Products {



  dart(
    title: 'Dart',
    description: 'The best object language',
    image: 'assets/ex3/dart.png'
  ),
  flutter(
    title: 'Flutter',
    description: 'The best mobile widget library',
    image: 'assets/ex3/flutter.png'
  ),
  firebase(
    title: 'Firebase',
    description: 'The best cloud database',
    image: 'assets/ex3/firebase.png'
  );

  final String title;
  final String description;
  final String image;

  const Products({required this.title, required this.description, required this.image});
}
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(title: Text('Products'),),
        body: Padding(
          
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: 
              // [ProductCard(products: Products.dart,),
              // ProductCard(products: Products.flutter,),
              // ProductCard(products: Products.firebase,),]

              // loop
              Products.values
              .map((p) => ProductCard(products: p)).toList(),
            
          ),
          ),
      ),
    )
  );
}

class ProductCard extends StatelessWidget {
  final Products products;

  const ProductCard({
    super.key, required this.products
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Padding(
        padding:EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child:  Image.asset(products.image, width: 60, ),
              
            ),
    
            SizedBox(height: 20,),
    
            Text(products.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
    
            Text(products.description,
              style: TextStyle(fontSize: 12,),
              ),
          ],
        ),
        
         ),
    );
  }
}



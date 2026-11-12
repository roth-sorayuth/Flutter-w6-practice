import 'package:flutter/material.dart';
enum MyButtonType {
  primary(
    color: Colors.blue
  ),
  secondary(
    color: Colors.green
  ),
  disable(
    color: Colors.grey
  );


final Color color;

const MyButtonType({required this.color});

}

enum SpecificButton{
  submit(
    label: 'submit',
    icon: Icons.check,
    buttonType: MyButtonType.primary
  ),
  time(
    label: 'time',
    icon: Icons.timelapse_sharp,
    position: IconPosition.right,
    buttonType: MyButtonType.secondary,
  
  ),
  account(
    label: 'account',
    icon: Icons.account_balance_sharp,
    position: IconPosition.right,
    buttonType: MyButtonType.disable,
  
  );

  final String label;
  final IconData icon;
  final IconPosition position;
  final MyButtonType buttonType;
  const SpecificButton({required this.label, required this.icon, required this.buttonType, this.position = IconPosition.left, });
}

enum IconPosition{
  left, right
}


void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
       appBar: AppBar(title: Text('Custom Button'),),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          ...SpecificButton.values
          .map((b) => CustomButton(button: b))
          
        ],
       ),
      ),
    )
  );
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.button
  });
  final SpecificButton button;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: button.buttonType.color),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: button.position == IconPosition.left ? [
           
         

          Icon(
            button.icon
          ),
          Text(button.label)
        ]
        
        : 
        
        [
          Text(button.label),
          Icon(
            button.icon
          ),
          
        ],
      ),
    );
  }
}


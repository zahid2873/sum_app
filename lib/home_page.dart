import 'package:flutter/material.dart';
import 'package:sum/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String,double> formValue = {"num1":0, "num2":0};
   double sum = 0;
  @override
  Widget build(BuildContext context) {

    InputOnChange(inputKey,inputValue){
      setState(() {
        formValue.update(inputKey, (value) => double.parse(inputValue));
      });
    }

    addAllNumber(){
      setState(() {
        sum = formValue['num1']! + formValue['num2']!;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$sum",style: AppTextStyle(),),
            SizedBox(height: 20,),
            TextField(
              onChanged: (value){
                InputOnChange("num1", value);
              },
              keyboardType: TextInputType.number,
              decoration: TextFieldStyle("Number1", "Enter your First Number"),
            ),
            SizedBox(height: 10,),
            TextField(
              onChanged: (value){
                InputOnChange("num2", value);
              },
              keyboardType: TextInputType.number,
              decoration: TextFieldStyle("Number2","Enter your Second number"),
            ),
            SizedBox(height: 20,),
            Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: AppButtonStyle(),
                    onPressed: (){addAllNumber();},
                    child: Text("Add"))),
          ],
        ),
      ),
    );
  }
}

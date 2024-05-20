import 'package:athang_v01/screen/TravelBhtApp/FrontTravel.dart';
import 'package:flutter/material.dart';

class HomeTravel extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.blueAccent,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.network('https://cdn.pixabay.com/photo/2018/04/23/16/03/bridge-3344716_1280.jpg', fit: BoxFit.cover,)
              ),
               const Padding(
                padding: EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Explore', style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 231, 231, 235)),),
                    Text('BHUTAN', style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 250, 250, 255)),),
                    Text('with us', style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),),
                     Text('Book Your Next Travel With Us', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),)
                  ],
                ),
              ),
             Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)
                  )
                ),
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Container(
                      height: 48,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ), onPressed: () { 
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => FrontTravel()),
                        );
                       },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Lets Get Started',
                            style: TextStyle(color: Colors.white, fontSize: 24),                            
                          ),
                          Icon(Icons.forward, color: Colors.white,)
                        ],
                      ),
                    ),
                    
                    ),
                    Container(
                    margin: EdgeInsets.only(top:16),
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Already have an account? Login'),
                    ),
                    Container(
                    margin: EdgeInsets.only(top:0),
                    padding: const EdgeInsets.all(0.0),
                    child: Text('Developed By Ugyen Tee', style: TextStyle(fontSize: 10),),
                    ),
                   ],
                ),
              ),
            ),
            Align(
               alignment: Alignment.topRight,
               child: Container(
                padding: EdgeInsets.all(16),
                child: OutlinedButton(
                  onPressed: (){},
                  child: Text('Skip', style: TextStyle(color: Colors.white),),
                  ),
               ),
            )
            ],
          ),
      )
    );
  }
}
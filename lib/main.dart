import 'package:flutter/material.dart';
import 'package:threads_clone/routes/mainActivity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Threads',
      routes: {
        '/': (context) => infoActivity(),
        '/home': (context) => Mainactivity(),
      },
    );
  }
}

class infoActivity extends StatefulWidget {
  const infoActivity({super.key});

  @override
  State<infoActivity> createState() => _infoActivityState();
}

class _infoActivityState extends State<infoActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(toolbarHeight: 0,backgroundColor: Colors.white,),

      body: Column(
        children: [

          Expanded(
            flex: 12,
              child: SizedBox(width: double.infinity,child: Image.asset('assets/image/Pattern.png',fit: BoxFit.fill,))),

          Expanded(
            flex: 3,
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/home');
                    setState(() {});
                  },
                  child: Container(
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffdddbdb)),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Log in with Instagram',style: TextStyle(color: Color(0xffb2b3b2),fontSize: 15),),
                              Text('me.nahid19',style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png'),
                        )

                      ],
                    ),
                  ),
                ),
              ),
          )



        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:threads_clone/widget/navItem.dart';

class Mainactivity extends StatefulWidget {
  const Mainactivity({super.key});

  @override
  State<Mainactivity> createState() => _MainactivityState();
}

class _MainactivityState extends State<Mainactivity> {

  int currentindex = 0;
  double posthight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Image.asset('assets/image/threads.png',width: 42,height: 42,),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      bottomNavigationBar: CustomNav(),
      body: ListView(
        children: [

          postLayout(),
          postLayout(),
          postLayout(),
          postLayout(),
        ],
      ),

    );
  }



  Widget CustomNav(){
    return Container(
      height: 78,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Navitem(
            index: 0,
            currentPosition: currentindex,
            selectImage: 'home_on.png', unselectImage: 'home_off.png',
            ontab: (){
              currentindex = 0;
              setState(() {});
            },
          ),

          Navitem(
            index: 1,
            currentPosition: currentindex,
            selectImage: 'search_on.png', unselectImage: 'search_off.png',
            ontab: (){
              currentindex = 1;
              setState(() {});
            },
          ),

          Navitem(
            selectImage: 'write.png',
            ontab: (){
              setState(() {});
            },
          ),

          Navitem(
            index: 2,
            currentPosition: currentindex,
            selectImage: 'heart_on.png', unselectImage: 'heart_off.png',
            ontab: (){
              currentindex = 2;
              setState(() {});
            },
          ),

          Navitem(
            index: 3,
            currentPosition: currentindex,
            selectImage: 'profile_on.png', unselectImage: 'profile_off.png',
            ontab: (){
              currentindex = 3;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  Widget postLayout(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    CircleAvatar(backgroundImage: NetworkImage('https://scontent.fbzl5-1.fna.fbcdn.net/v/t39.30808-6/461430012_122191430114074736_7096328490961749264_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=J0Gfl9c6d9sQ7kNvgFl3dSU&_nc_zt=23&_nc_ht=scontent.fbzl5-1.fna&_nc_gid=AOnQeCOI0n1fZWQllbRzrbt&oh=00_AYCg-tgcAe4LejddIP6P5HCZWOifs24FKl8bcu-cupFm_Q&oe=6747932B'),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Container(width: 2.5,color: Colors.grey.shade200,height: posthight,),
                    ),
                  ],
                ),

                Expanded(
                  child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          posthight = constraints.maxHeight;
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('MD Nahid Hossen',style: TextStyle(fontSize: 18,color: Colors.black87,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 8,),
                                    //Icon(Icons.verified,color: Colors.blueAccent,size: 16,)
                                  ],
                                ),

                                Text('Hey @zuck where is my verified?',style: TextStyle(fontSize: 16),),
                                SizedBox(height: 8,),
                                Image.asset('assets/icon/moreicon.png',height: 24,),
                                SizedBox(height: 5,),
                                Text('1k Like',style: TextStyle(color: Colors.grey.shade500),)
                              ],
                            ),
                          );
                        }
                      ),
                ),

                Row(
                  children: [
                    Text('55m',style: TextStyle(color: Colors.grey.shade400),),
                    SizedBox(width: 8,),
                    Icon(Icons.more_horiz),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                CircleAvatar(backgroundImage: NetworkImage('https://images.javatpoint.com/biography/images/mark-zuckerberg.png'),),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Zuck',style: TextStyle(fontSize: 18,color: Colors.black87,fontWeight: FontWeight.bold),),
                            SizedBox(width: 8,),
                            Icon(Icons.verified,color: Colors.blueAccent,size: 16,)
                          ],
                        ),
                        Text('Just a sec...😂',style: TextStyle(fontSize: 16),),
                        SizedBox(height: 8,),
                        Image.asset('assets/icon/moreicon.png',height: 24,),
                        SizedBox(height: 5,),
                        Text('500 Like',style: TextStyle(color: Colors.grey.shade500),)

                      ],
                    ),
                  ),
                ),

                Row(
                  children: [
                Text('45m',style: TextStyle(color: Colors.grey.shade400),),
                SizedBox(width: 8,),
                Icon(Icons.more_horiz),
                  ],
                )


              ],
            ),
            SizedBox(height: 16,),
            Divider(height: 0.5,color: Colors.grey.shade200,)

          ],
        ),
      ),
    );
  }
}

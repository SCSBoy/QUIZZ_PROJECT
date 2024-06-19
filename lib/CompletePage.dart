import 'package:flutter/material.dart';
class Completed extends StatelessWidget{
  const Completed({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 1221,
            width: 400,
            child: Stack(
              children: [
                Container(
                  height: 340,
                  width: 410,
                  decoration: BoxDecoration(
                    color: Color(0xFF42A5F5),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 85,
                      backgroundColor: Color.fromARGB(255, 94, 255, 0).withOpacity(.9),
                      child: CircleAvatar(
                      radius: 71,
                      backgroundColor: Color.fromARGB(255, 94, 255, 0).withOpacity(.4),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        child: Center(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Votre Score',
                             style: TextStyle(
                              fontSize: 20, color: Colors.white
                            ),),
                            RichText(
                              text: const TextSpan(
                                text: '100', style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold,
                                  color: Color(0xFF42A5F5)
                                ),
                                children: [
                                  TextSpan(
                                    text: ' pt', style: TextStyle(
                                      fontSize: 15,color: Color(0xFF42A5F5)
                                  ),
                                    )]
                              )
                            )
                          ],
                        ),
                        )                  
                      ),
                    ),
                  ),
                  ),
                )
                ,
                Positioned(
                  bottom:60,
                  left: 22,
                  child: Container(
                    height: 190,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 3,
                          color: Color(0xFF42A5F5).withOpacity(.7),
                          offset: Offset(0, 1)
                          )
                      ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                     child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Row(
                                      children: [ Container(
                                        height: 15,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF42A5F5)
                                        ),
                                      ),
                                      const Text('100%', style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 20,
                                        color: Color(0xFF42A5F5)
                                      ),)
                                      ],
                                    ),
                                  ),
                                  const Text('Completé')
                                ],
                              )
                              ,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Row(
                                      children: [ Container(
                                        height: 15,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF42A5F5)
                                        ),
                                      ),
                                      const Text('100%', style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 20,
                                        color: Color(0xFF42A5F5)
                                      ),)
                                      ],
                                    ),
                                  ),
                                  const Text('Total questions')
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          )
                          ,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Row(
                                      children: [ Container(
                                        height: 15,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green
                                        ),
                                      ),
                                      const Text('07', style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 20,
                                        color: Colors.green
                                      ),)
                                      ],
                                    ),
                                  ),
                                  const Text('Correct')
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40.0),
                                child: Column(  
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Row(
                                        children: [ Container(
                                          height: 15,
                                          width: 15,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red
                                          ),
                                        ),
                                        const Text('03', style: TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 20,
                                          color: Colors.red
                                        ),)
                                        ],
                                      ),
                                    ),
                                    const Text('Mauvaise réponse')
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                     ),),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 1,),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFF42A5F5),
                        radius: 35,
                        child: Center(
                          child: Icon(Icons.refresh, size: 35, color: Colors.white),
                        ),
                      )
                      ,
                      SizedBox(height: 10,),
                      Text('Recommencer', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w600),)
                    ],
                  )
                ,
                Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xF42B5F5),
                        radius: 35,
                        child: Center(
                          child: Icon(Icons.visibility_rounded, size: 35, color: Colors.white),
                        ),
                      )
                      ,
                      SizedBox(height: 10,),
                      Text('Voir les réponses', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w600),)
                    ],
                  )
                ,
                Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0x22FFFF85),
                        radius: 35,
                        child: Center(
                          child: Icon(Icons.share, size: 35, color: Colors.white),
                        ),
                      )
                      ,
                      SizedBox(height: 10,),
                      Text('Partager', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w600),)
                    ],
                  )
                ],
              )
            ),
          )
          ,
          SizedBox(height: 2,),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        // onTap: (){
                        //   Navigator.push(context, 
                        //     MaterialPageRoute(builder: (context)=>HomePage()));
                        // },
                        child: const CircleAvatar(
                        backgroundColor: Color(0xFF42A5F5),
                        radius: 35,
                        child: Center(
                          child: Icon(Icons.settings, size: 35, color: Colors.white),
                        ),
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text('Paramètres', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w600),)
                    ],
                  )
                ,
                Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xF42B5F5),
                        radius: 35,
                        child: Center(
                          child: Icon(Icons.file_open_rounded, size: 35, color: Colors.white),
                        ),
                      )
                      ,
                      SizedBox(height: 10,),
                      Text('Generate PDF', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w600),)
                    ],
                  )
                ,
                Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0x22FFFF85),
                        radius: 35,
                        child: Center(
                          child: Icon(Icons.home, size: 35, color: Colors.white),
                        ),
                      )
                      ,
                      SizedBox(height: 10,),
                      Text('Accueil', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w600),)
                    ],
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
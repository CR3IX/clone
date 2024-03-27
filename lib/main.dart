import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> users=[
    '1','2','3','4','5','6'
  ];
  List<String> posts=[
    '1','2','3'
  ];
  Widget userTemplate(user){
    return const Card(
      margin: EdgeInsets.fromLTRB(8, 16, 8, 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      color: Colors.white,
      child: SizedBox(
        width: 75,
        height: 100,
      ),
    );
  }
  Widget postTemplate(post){
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(10, 5, 5, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black.withOpacity(0.5),),
                      ),
                  Column(
                    children: [const Text('Name'),Padding(
                      padding: const EdgeInsets.only(left:18.0),
                      child: Text('Posted in -----',style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                    )],
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:20.0),
            child: Text('Discover adventure in patagonias peaks or serenity provences hamlets - arrival'),
          ),
          const SizedBox(height: 250,)
        ],
      ),
    );
  }
  Widget _navBar(){
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Container(
              alignment: const Alignment(1,-1),
              height: 70,
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),color: Colors.white,),

              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0),
                  child: Row(
                    children: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.home_max_outlined),),
                      const SizedBox(width: 15,),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
                      const SizedBox(width: 15,),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.videocam_outlined)),
                      const SizedBox(width: 15,),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.person_outline_sharp)),
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right:18.0),
            child: FloatingActionButton(onPressed: () {},
            shape: const CircleBorder(),
            backgroundColor: Colors.green[200],
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5,10,5,0),
          child: Stack(
            children: [SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,28.0,15,0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {}, child: const Row(
                          children: [
                            Icon(
                              Icons.notifications,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5,height: 10,),
                            Text('3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18 ,color: Colors.black),),
                                    
                          ]
                        ),  
                                      ),
                    //const SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: () {}, 
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: Icon(
                        Icons.message_rounded,
                        color: Colors.black.withOpacity(0.5),
                        size: 17,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black.withOpacity(0.5),),
                      ),
                  ],
                  ),
                ),
                Row(
                  children: [
                    TextButton(onPressed: () {},child: Text('Discover',style: TextStyle(color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold),),),
                    TextButton(onPressed: () {}, child: Text('Following',style: TextStyle(color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold),)),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: users.map((user) => userTemplate(user)).toList(),
                  ),
                ),
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text('Recently Post',style: TextStyle(color: Colors.black.withOpacity(0.3),fontWeight: FontWeight.normal),)),
                    const Spacer(),
                    IconButton(onPressed: () {}, icon:Icon(Icons.menu,color: Colors.black.withOpacity(0.3),))
                  ],
                ),
                Column(
                  children: posts.map((post)=>postTemplate(post)).toList(),
                )
              ]),
          ), 
          Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom:10.0),
                child: _navBar(),
              )
            ],
          )
          ]
            ),
          ),
        ),
      );
      //bottomNavigationBar: _navBar(),// This trailing comma makes auto-formatting nicer for build methods.
  }
}
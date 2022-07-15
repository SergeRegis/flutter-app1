// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_flutter/util/emotion_faces.dart';
import 'package:new_flutter/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
           
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
           
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
           
          ),
        ]),
      

      body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          children: [

            // greeting row
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // hi serge
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'hi, serge',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 8,
                          ),
                          Text(
                            '15 july, 2022',
                            style: TextStyle(
                              color: Colors.blue[200]),
                            ),
                      ],
                    ),

                    // notification
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        ),
                    )
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),

          // search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                ),
                    padding: EdgeInsets.all(12),
                  child: Row(
                  children: [
                  Icon(
                    Icons.search,
                  color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  Text(
                    'Search',
                  style: TextStyle(
                    color:Colors.white,
                  ),
                  ),
                  
                ],
                ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),

          // how do you feel?

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18 ,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.more_horiz,
                    color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),

          // 4 different faces
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // bad
                    Column(
                      children: [
                        EmotionFace(
                          emotionFace: '🙂',
                        ),
                        SizedBox(height: 8,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),


                    // fine
                      Column(
                      children: [
                        EmotionFace(
                          emotionFace: '😄',
                        ),
                        SizedBox(height: 8,
                        ),
                        Text(
                          'Fine',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    // well
                      Column(
                      children: [
                        EmotionFace(
                          emotionFace: '😁',
                        ),
                        SizedBox(height: 8,
                        ),
                        Text(
                          'Well',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    // excellent
                      Column(
                      children: [
                        EmotionFace(
                          emotionFace: '😆',
                        ),
                        SizedBox(height: 8,
                        ),
                        Text(
                          'Excellent',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                
                    
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
            ),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                child: Column(children: [

                  // this is exercises heading

                  Row(

                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [         
                      Text('Excercises' ,
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),

                  SizedBox(height: 20,
                  ),

                  // list view of exercises list

                  Expanded(
                    child: ListView(
                      children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          exerciseName: 'Speaking Skills',
                          numberOfExercises: 16,
                          color: Colors.orange,
                        ),
                        ExerciseTile(
                          icon: Icons.person,
                          exerciseName: 'Reading Skills',
                          numberOfExercises: 6,
                          color: Colors.green,
                        ),
                       ExerciseTile(
                          icon: Icons.star,
                          exerciseName: 'Writing Skills',
                          numberOfExercises: 26,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),

                 
                ]),
              ),
            ),
          )

        
        ],
        ),
      ),
      ),
    );
  }
}

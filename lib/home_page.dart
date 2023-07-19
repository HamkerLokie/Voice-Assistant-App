import 'package:assistance/fetaures_box.dart';
import 'package:assistance/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cypher'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(children: [
        Stack(
          children: [
            Center(
                child: Container(
              height: 120,
              width: 120,
              margin: const EdgeInsets.only(top: 4),
              decoration: const BoxDecoration(
                  color: Pallete.assistantCircleColor, shape: BoxShape.circle),
            )),
            Container(
              height: 123,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/virtualAssistant.png')),
              ),
            )
          ],
        ),
        //Chat Bubble
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
            top: 30,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Pallete.borderColor),
              borderRadius:
                  BorderRadius.circular(20).copyWith(topRight: Radius.zero)),
          child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Good Morning, what task can i do for you?',
                style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.mainFontColor,
                    fontSize: 25),
              )),
        ),
        Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10, left: 22),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Here are a few features',
              style: TextStyle(
                  fontFamily: "Cera Pro",
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        const Column(
          children: [
            FeatureBox(
                color: Pallete.firstSuggestionBoxColor,
                headerText: 'ChatGPT',
                descText:
                    'A smarter way to organise and informed with CHatGPT'),
            FeatureBox(
                color: Pallete.secondSuggestionBoxColor,
                headerText: 'Dalle',
                descText:
                    'Get inspired and stay creative with your personal assistant powered bt Dall-E  '),
            FeatureBox(
                color: Pallete.thirdSuggestionBoxColor,
                headerText: 'Smart Voice Assistant',
                descText:
                    'Get the best of both words with a voice assistant powered by Dalle-E and ChatGPT')
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}

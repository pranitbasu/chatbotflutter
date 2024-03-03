import 'package:flutter/example.dart';
import 'package:Flutter/material.dart';
import 'package:Flutter/chats.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 52, 53, 65)),
    home: const ChatBot(),
  ));
}

class ChatBot extends StatelessWidget {
  const ChatBot({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 52, 53, 65),
        title: const Center(
          child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(children: [
                TextSpan(
                  text: "ChatGPT\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "Cloned by Pranit Basu",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ])),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 52, 53, 65),
                Color.fromARGB(255, 52, 53, 60),
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 45),
                Image.network(
                    'https://static.vecteezy.com/system/resources/previews/022/841/114/original/chatgpt-logo-transparent-background-free-png.png',
                    height: 55),
                const SizedBox(height: 20),
                const Text(
                  'Welcome to',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const Text(
                  'ChatGPT',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(50, 255, 255, 255),
                    elevation: 15,
                    shadowColor: Colors.black,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen()));
                  },
                  child: const Text('Ask anything, get your answer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 90),
                const Icon(
                  Icons.wb_sunny_outlined,
                  size: 28,
                  color: Colors.white,
                ),
                const Text(
                  'Examples',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Column(
                    children: [
                      Example(
                        text: 'Explain quantum computing in simple terms',
                      ),
                      Example(
                        text:
                            "Got any creative ideas for 10 year old's boy birthday?",
                      ),
                      Example(
                        text: 'How to make a http request in Javascript',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 190),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
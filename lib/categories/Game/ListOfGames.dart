import 'package:flutter/material.dart';
import 'package:riddleworld/categories/Game/game1@harshptl14/Game1homepage.dart';
import 'package:riddleworld/categories/Game/game2@tanharpatel/Games2HomeScreen.dart';
import 'package:riddleworld/universal/riddleAppbar.dart';

class GameLists extends StatefulWidget {
  @override
  _StateGameLists createState() => _StateGameLists();
}

class _StateGameLists extends State<GameLists> {
  @override
  Widget build(BuildContext context) {
    return RiddleBar(
      title: 'GAMELISTS',
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            ActionCard(
                name: 'GUESS THE COLOR',
                description:
                    '''YOU WILL BE GIVEN RGB COLOR CODE AND YOU HAVE TO GUESS COLOR\n by @harshptl14''',
                number: '1',
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => FirstGame()));
                }
                ),
            ActionCard(
                name: 'Hellooooo',
                description:
                    '''OCTOCAT WELCOMES YOU...\n by @tanharpatel''',
                number: '2',
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Games2HomeScreen()));
                }
                ),
          ],
        )),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String name;
  final String number;
  final String description;

  const ActionCard(
      {Key key,
      @required this.onPressed,
      this.icon,
      @required this.name,
      @required this.number,
      @required this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 9, bottom: 6),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
              border: Border.all(width: 2), color: Colors.transparent),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 10,
                child: Text(
                  number,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class wordFind extends StatefulWidget {
  const wordFind({Key? key}) : super(key: key);

  @override
  State<wordFind> createState() => _wordFindState();
}

class _wordFindState extends State<wordFind> {
  GlobalKey<_WordFindWigetState> globalKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://rgb.vn/wp-content/uploads/2020/09/rgb-creativethe-tale-of-cuoi-the-coffee-house-trung-thu.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://rgb.vn/wp-content/uploads/2020/09/rgb-creativethe-tale-of-cuoi-the-coffee-house-trung-thu.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: WordFindWiget(
                        constraints.biggest,
                        key: globalKey,
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  globalKey.currentState?.generatePuzzle();
                },
                child: Text("reload"),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class WordFindWiget extends StatefulWidget {
  Size size;
  WordFindWiget(this.size, {Key? key}) : super(key: key);

  @override
  State<WordFindWiget> createState() => _WordFindWigetState();
}

class _WordFindWigetState extends State<WordFindWiget> {
  @override
  final borderRadius = BorderRadius.circular(20);
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0, top: 10.0),
            width: screenWidth * 0.98,
            height: screenHeight * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 247, 53, 39),
            ),
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                IconButton(
                  icon: Image.asset("images/back_icon.png"),
                  iconSize: 45,
                  onPressed: () {},
                ),
                Container(
                  margin: new EdgeInsets.symmetric(horizontal: 15.0),
                  child: Image.network(
                    "https://image.winudf.com/v2/image1/YmVzdC53b3JkLmNvbm5lY3Quc2VhcmNoLmZyZWUub2ZmbGluZS5wdXp6bGUud29yZC5nYW1lcy53b3JsZF9pY29uXzE1NjQ1NzM1MjRfMDQy/icon.png?w=&fakeurl=1",
                    fit: BoxFit.contain,
                    height: 40,
                    width: 40,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)),
                  width: 111,
                  child: Text(
                    "1",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 5, 116, 207)),
                  ),
                ),
                Container(
                  margin: new EdgeInsets.symmetric(horizontal: 9.0),
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Facebook_icon_2013.svg/300px-Facebook_icon_2013.svg.png",
                    fit: BoxFit.contain,
                    height: 40,
                    width: 40,
                  ),
                ),
                Container(
                  child: Image.network(
                      "https://img.freepik.com/free-vector/pixel-game-life-bar-isolated-cloud-background-art-8-bit-health-heart-bar-gaming-controller_168129-1182.jpg",
                      fit: BoxFit.contain,
                      height: 40,
                      width: 80),
                )
              ]),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(
                vertical: 12.0, horizontal: 5.0), // Border width
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 184, 54),
                borderRadius: borderRadius),
            child: ClipRRect(
              borderRadius: borderRadius,
              child: SizedBox.fromSize(
                size: Size.fromRadius(175), // Image radius
                child: Image.network(
                    'https://play-lh.googleusercontent.com/z6aS2wnyp16KA9CFEep7HvZd2DmwRfoR9NWm9oHWRw-tuXLE_CPbnb1OL39-a456EgA',
                    fit: BoxFit.cover,),
              ),
            ),
          )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            alignment: Alignment.center,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(5, (index) => index).map((puzzle) {
                    Color color = Color.fromARGB(255, 29, 27, 27);
                    return InkWell(
                      onTap: () {},  
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10)),
                        width: constraints.biggest.width / 7 - 7,
                        height: constraints.biggest.width / 7 - 7,
                        margin: EdgeInsets.all(3),
                        child: Text(""),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 8,
                crossAxisSpacing: 4,
              ),
              itemCount: 16,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    Color color = Colors.grey.shade300;
                    return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(randomAlpha(1),style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18, ),
                        )
                      );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void generatePuzzle() {}

  generateHin() {}
}

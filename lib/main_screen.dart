import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final books = [
      'assets/thesecondsex_book.jpg',
      'assets/themandarins_book.jpg',
      'assets/comingofage_book.jpg'
    ];

    final simoneImages = [
      'assets/simone_1.jpg',
      'assets/simone_2.jpg',
      'assets/simone_3.jpg',
      'assets/simone_4.jpg',
      'assets/simone_5.jpg',
    ];
    
    Widget buildImage(String image, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.asset(
        image,
        fit:BoxFit.cover,
      )
    );
    return Scaffold(
      backgroundColor: Color(0xFF24213E),
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/image_1.jpeg'),
                Padding(
                  padding: const EdgeInsets.only(top: 235, left: 20),
                  child: Text(
                    'Simone De Beauvoir',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 35,
                      color: Colors.yellow[400],
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 280, left: 20),
                  child: Text(
                    'French Writer',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      color: Colors.white,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Simone de Beauvoir, (born Jan. 9, 1908, Paris, France—died April 14, 1986, Paris), French writer and feminist. As a student at the Sorbonne, she met Jean-Paul Sartre, with whom she formed a lifelong intellectual and romantic bond. She is known primarily for her treatise The Second Sex (1949), a scholarly and passionate plea for the abolition of what she called the myth of the “eternal feminine”; the book became a classic of feminist literature. She also wrote four admired volumes of autobiography (1958–72), philosophical works that explore themes of existentialism, and fiction, notably The Mandarins (1954, Prix Goncourt). The Coming of Age (1970) is a bitter reflection on society’s indifference to the elderly.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 640, left: 20),
                  child: Text(
                    'Famous Books',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 35,
                      color: Colors.yellow[400],
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 720),
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 500,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      ),
                    itemCount: books.length,
                    itemBuilder: (context, index, realIndex){
                      final book = books[index];
                      return buildImage(book, index);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1255, left: 20),
                  child: Text(
                    'The Second Sex (1949)',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1300),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Revolutionary and incendiary, The Second Sex is one of the earliest attempts to confront human history from a feminist perspective. It won de Beauvoir many admirers and just as many detractors. Today, many regard this massive and meticulously researched masterwork as not only as pillar of feminist thought but of twentieth-century philosophy in general.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1470),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'De Beauvoir’s primary thesis is that men fundamentally oppress women by characterizing them, on every level, as the Other, defined exclusively in opposition to men. Man occupies the role of the self, or subject; woman is the object, the other. He is essential, absolute, and transcendent. She is inessential, incomplete, and mutilated. He extends out into the world to impose his will on it, whereas woman is doomed to immanence, or inwardness. He creates, acts, invents; she waits for him to save her. This distinction is the basis of all de Beauvoir’s later arguments.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 1740, left: 20),
                  child: Text(
                    'The Mandarins (1954)',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1790),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'The Mandarins, novel by Simone de Beauvoir, published in French as Les Mandarins in 1954; it won the Prix Goncourt in 1954.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1880),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'De Beauvoir’s semiautobiographical novel addressed the attempts of post-World War II leftist intellectuals to abandon their elite, “mandarin” status and to engage in political activism. The novel contains philosophical and political arguments, but it is probably more widely read as a roman à clef. The characters of psychologist Anne Dubreuilh and her politically active husband, Robert, were roughly based on de Beauvoir and her lifelong associate Jean-Paul Sartre; de Beauvoir’s account of Anne’s affair with the American Lewis Brogan was a thinly veiled account of her own relationship with novelist Nelson Algren.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 2173, left: 20),
                  child: Text(
                    'Coming of Age (1970)',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2224),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "What do the words elderly, old, and aged really mean? How are they used by society, and how in turn do they define the generation that we are taught to respect and love but instead castigate and avoid? Most importantly, how is our treatment of this generation a reflection of our society's values and priorities?",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2380),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "In The Coming of Age, Simone de Beauvoir seeks greater understanding of our perception of elders. With bravery, tenacity, and forceful honesty, she guides us on a study spanning a thousand years and a variety of different nations and cultures to provide a clear and alarming picture of \"Society's secret shame\"--the separation and distance from our communities that the old must suffer and endure.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 2610, left: 20),
                  child: Text(
                    'Famous Quotes',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 35,
                      color: Colors.yellow[400],
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2690),
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 500,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      ),
                    itemCount: simoneImages.length,
                    itemBuilder: (context, index, realIndex){
                      final image = simoneImages[index];
                      return buildImage(image, index);
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 3215),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      '"One is not born, but rather becomes, a woman"',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3385, left: 15),
                  child: Text(
                    '— Simone De Beauvoire: The Second Sex',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 22,
                      color: Colors.grey[400],
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 3445),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      '"It is old age, rather than death, that is to be contrasted with life. Old age is life\'s parody, whereas death transforms life into a destiny."',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3785, left: 15),
                  child: Text(
                    '— Simone De Beauvoire: Coming of Age',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 22,
                      color: Colors.grey[400],
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3845),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        '"If I had amnesia, I’d be almost like other men. Perhaps I’d even be able to love you."',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4050, left: 15),
                  child: Text(
                    '— Simone De Beauvoire: All Men are Mortal',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 22,
                      color: Colors.grey[400],
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4200),
                )
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
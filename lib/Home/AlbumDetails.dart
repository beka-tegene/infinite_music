import 'package:flutter/material.dart';
import 'package:my_test/Home/musicPlay.dart';

class AlbumDetails extends StatefulWidget {
  const AlbumDetails({super.key, required this.index});
  final int index;
  @override
  State<AlbumDetails> createState() => _AlbumDetailsState();
}

class _AlbumDetailsState extends State<AlbumDetails> {
  void playMusic(BuildContext context, int index) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MusicPlay(index: index)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          elevation: 1,
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(45, 45, 45, 1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(45, 45, 45, 1)),
                  ),
                  fillColor: Color.fromRGBO(45, 45, 45, 1),
                  filled: true,
                  hintText: 'Search list ',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/Images/album${widget.index}.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Rophnan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.amber,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.more_vert_sharp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.shuffle,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.play_circle,
                          color: Colors.amber,
                          size: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ...List.generate(
                5,
                (index) => GestureDetector(
                  onTap: () => playMusic(context, widget.index),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: Card(
                      color: Colors.white24,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(3),
                            child: Image.asset(
                              'lib/Images/album${widget.index}.jpg',
                              height: 70,
                            ),
                          ),
                          const SizedBox(width: 15),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ROPHNAN  - ሮፍናን',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                              Text(
                                'SHEGIYE - ሸግዬ',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

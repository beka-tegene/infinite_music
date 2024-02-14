import 'package:flutter/material.dart';

class MusicPlay extends StatefulWidget {
  const MusicPlay({super.key, required this.index});
  final int index;
  @override
  State<MusicPlay> createState() => _MusicPlayState();
}

class _MusicPlayState extends State<MusicPlay> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          actions: const [
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: null,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/Images/album${widget.index}.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ROPHNAN - ሮፍናን',
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
              ),
              Slider(
                value: _currentSliderValue,
                min: 0,
                max: 3,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
                activeColor: Colors.amber,
                inactiveColor: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.0),
                child: Row(
                  children: [
                    Text(
                      '0:06',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '3:13',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite,color: Colors.white,),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: Icon(Icons.skip_previous,color: Colors.white,),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: Icon(Icons.play_arrow,color: Colors.white,),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: Icon(Icons.skip_next,color: Colors.white,),
                      onPressed: null,
                    ),
                    
                    IconButton(
                      icon: Icon(Icons.more_vert,color: Colors.white,),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.shuffle,color: Colors.white,),
                      onPressed: null,
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.share,color: Colors.white,),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

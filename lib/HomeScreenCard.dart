import 'package:flutter/material.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 252, 224, 138),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 2,
                color: Colors.amber,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lovely Day",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Wikipedia differs from printed references in important ways. It is continually created and updated, and encyclopedic articles on new events appear within minutes rather than months or years. Because anyone can improve Wikipedia, it has become more comprehensive, clear, and balanced than any other encyclopedia. Its contributors improve the quality and quantity of the articles as well as remove misinformation, errors, and vandalism."),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Design"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("|"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("hello")
                      ],
                    ),
                    Text("2077/02/23"),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: 24,
            right: 24,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzFXDyZGuuqps41PSR28QnSc38_mwvMC_jGQ&usqp=CAU",
                height: 60,
              ),
            )),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TouristList extends StatefulWidget {
  const TouristList({super.key});

  @override
  _TouristListState createState() => _TouristListState();
}

class _TouristListState extends State<TouristList> {
  List<Widget> tourists = [];
  int touristCount = 0;

  bool isAddTourists = false;
  void addingTourists() {
    setState(() {
      isAddTourists = !isAddTourists;
    });
  }

  void addTourist(bool isAddTourists, Function addingTourists) {
    setState(() {
      touristCount++;
      if (touristCount == 1) {
        tourists.add(
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Первый турист',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    child: Card(
                      elevation: 2,
                      color: const Color(0xffe7f1ff),
                      child: IconButton(
                        iconSize: 20,
                        onPressed: () {
                          addingTourists();
                        },
                        color: const Color(0xff0d72ff),
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
              if (isAddTourists) TextFormField(),
            ],
          ),
        );
      } else if (touristCount == 2) {
        tourists.add(
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Второй турист',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    child: Card(
                      elevation: 2,
                      color: const Color(0xffe7f1ff),
                      child: IconButton(
                        iconSize: 20,
                        onPressed: () {},
                        color: const Color(0xff0d72ff),
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
              if (isAddTourists) TextFormField()
            ],
          ),
        );
      } else if (touristCount == 3) {
        tourists.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Третий турист',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                child: Card(
                  elevation: 2,
                  color: const Color(0xffe7f1ff),
                  child: IconButton(
                    iconSize: 20,
                    onPressed: () {},
                    color: const Color(0xff0d72ff),
                    icon: const Icon(Icons.add),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Список туристов"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView(
              children: [
                for (var tourist in tourists) tourist,
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Добавить туриста',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                child: Card(
                  elevation: 2,
                  color: Colors.blue,
                  child: IconButton(
                    onPressed: () => addTourist(isAddTourists, addingTourists),
                    icon: const Icon(Icons.add),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

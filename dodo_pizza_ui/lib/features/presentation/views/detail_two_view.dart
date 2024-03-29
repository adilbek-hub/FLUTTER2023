import 'package:dodo_pizza_ui/features/data/models/profitable_tasty.dart';
import 'package:dodo_pizza_ui/features/presentation/views/home_page.dart';
import 'package:flutter/material.dart';

class DetailTwoView extends StatelessWidget {
  const DetailTwoView({
    super.key,
    required this.profitableTasty,
  });
  final ProfitableTasty profitableTasty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.network(
                  profitableTasty.image,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      profitableTasty.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    profitableTasty.sizeTitle,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  profitableTasty.description,
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    profitableTasty.ingreTitle,
                    style: const TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 220, 219, 219),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Text('Маленькая'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 9,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: const Text('Средняя'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 9,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Text('Большая'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 220, 219, 219),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Традиционное',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Добавить по вкусу',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 120,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            profitableTasty.imageDetail[1],
                          ),
                          Text(profitableTasty.titleDetail[0]),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.network(
                        profitableTasty.imageDetail[1],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.network(
                        profitableTasty.imageDetail[2],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Image.network(
                          profitableTasty.imageDetail[3],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 20,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(Icons.arrow_back_ios_new_outlined),
              ),
            )),
      ]),
      bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: Size(100, 40),
        ),
        onPressed: () {},
        child: const Text(
          'В корзину за 445 сом',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      )),
    );
  }
}

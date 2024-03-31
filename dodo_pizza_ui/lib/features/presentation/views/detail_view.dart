import 'package:dodo_pizza_ui/features/data/models/small_type_pizza.dart';
import 'package:dodo_pizza_ui/features/data/models/type_of_pizza.dart';
import 'package:dodo_pizza_ui/features/presentation/views/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key, required this.profitableTasty});
  final TypeOfPizza profitableTasty;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  int selectedIndex = 0;
  final List<String> options = ['Маленькая', 'Средняя', 'Большая'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 239, 239),
        body: Stack(children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    widget.profitableTasty.smallPizza.image,
                    fit: BoxFit.cover,
                    height: 300,
                    width: 300,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.profitableTasty.smallPizza.name,
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
                      widget.profitableTasty.smallPizza.sizePizza,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.profitableTasty.smallPizza.description,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.profitableTasty.ingreTitle,
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
                      children: List.generate(
                        options.length,
                        (index) => GestureDetector(
                          onTap: () => setState(() => selectedIndex = index),
                          child: Container(
                            padding: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Text(options[index]),
                          ),
                        ),
                      ),
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
                      child: const Center(
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
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 150 / 220,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(
                          widget.profitableTasty.smallPizza.suplements.image
                              .length, (index) {
                        final suplementName = widget
                            .profitableTasty.smallPizza.suplements.name[index];
                        final suplementImage = widget
                            .profitableTasty.smallPizza.suplements.image[index];
                        final suplementPrice = widget
                            .profitableTasty.smallPizza.suplements.price[index];

                        return Center(
                          child: Card(
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            clipBehavior: Clip.antiAlias,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(suplementImage),
                                  Text(
                                    suplementName,
                                    textAlign: TextAlign.center,
                                  ),
                                  Text('$suplementPrice сом'),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Positioned(
              top: 20,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0)),
            minimumSize: const Size(100, 40),
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
      ),
    );
  }
}

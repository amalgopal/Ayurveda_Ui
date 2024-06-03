import 'package:ayurveda_ui/screens/register_screen.dart';
import 'package:ayurveda_ui/widgets/home_container.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var data = ['date', 1, 2, 3, 4, 5, 6, 7];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_rounded)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: screenSize.width * 0.7,
                    child: const TextField(
                      decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.search),
                          hintText: 'Search Trieatments',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder()),
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Search')),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('sort by:'),
                DropdownMenu(
                    dropdownMenuEntries: data
                        .map<DropdownMenuEntry<dynamic>>((var value) =>
                            DropdownMenuEntry(
                                value: value, label: value.toString()))
                        .toList())
              ],
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 13,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  ContainerWidget(
                      name: '1. Amal gopal',
                      package: ' Couple Combo Package (Rejuven...'),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  ContainerWidget(
                      name: '1. Amal gopal',
                      package: ' Couple Combo Package (Rejuven...'),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  ContainerWidget(
                      name: '1. Amal gopal',
                      package: ' Couple Combo Package (Rejuven...'),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  ContainerWidget(
                      name: '1. Amal gopal',
                      package: ' Couple Combo Package (Rejuven...'),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ScreenRegister()));
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        child: const Text(
          'Register Now',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

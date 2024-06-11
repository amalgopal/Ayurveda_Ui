import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  String name;
  String package;
  ContainerWidget({super.key, required this.name, required this.package});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      // height: screenSize.height * 0.2,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 219, 218, 218),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, bottom: 20),
            child: Text(package, style: const TextStyle(color: Colors.green)),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.orange,
                  ),
                  Text('31/01//2024')
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.orange,
                  ),
                  Text('Jithin')
                ],
              )
            ],
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('View Booking'),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

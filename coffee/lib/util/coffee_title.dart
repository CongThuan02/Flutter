import 'package:flutter/material.dart';

class CoffeeTitle extends StatelessWidget {
  const CoffeeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        bottom: 25.0,
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset("lib/images/latte.png", width: 100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "latte",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "with Almond Milk",
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$4.00'),
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

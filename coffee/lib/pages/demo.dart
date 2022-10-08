Widget Demo extension context.select((SubjectBloc element) => element) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 25),
        child: ListView(
          scrollDirection: Axis.vertical, // horizontal xep theo cot
          children: [
            CoffeeTitle(
              coffeeImagePath: "lib/images/latte.png",
              coffeeName: "hehe",
              coffeePrice: '4.00',
            ),
            CoffeeTitle(
              coffeeImagePath: "lib/images/caffee.png",
              coffeeName: "hehe",
              coffeePrice: '4.00',
            ),
            CoffeeTitle(
              coffeeImagePath: "lib/images/milk.png",
              coffeeName: "hehe",
              coffeePrice: '4.00',
            ),
            CoffeeTitle(
              coffeeImagePath: "lib/images/milk.png",
              coffeeName: "hehe",
              coffeePrice: '4.00',
            ),
            CoffeeTitle(
              coffeeImagePath: "lib/images/milk.png",
              coffeeName: "hehe",
              coffeePrice: '4.00',
            ),
            CoffeeTitle(
              coffeeImagePath: "lib/images/milk.png",
              coffeeName: "hehe",
              coffeePrice: '4.00',
            ),
            CoffeeTitle(
              coffeeImagePath: "lib/images/milk.png",
              coffeeName: "hehe",
              coffeePrice: '4.00',
            ),
          ],
        ),
      ),
    );
  }
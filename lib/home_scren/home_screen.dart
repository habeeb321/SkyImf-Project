import 'package:flutter/material.dart';
import 'package:skyimfproject/widgets/custom_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter layout demo',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: const AssetImage('assets/sample.jpeg'),
              fit: BoxFit.cover,
              height: size.height * 0.3,
              width: double.infinity,
            ),
            SizedBox(height: size.height * 0.04),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Oeshinin Lake Campground',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Kandersteg, Switzerland',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffF34336),
                    ),
                    Text('41'),
                  ],
                ),
              ],
            ),
            SizedBox(height: size.height * 0.04),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtonWidget(text: 'CALL', icon: Icons.call),
                CustomButtonWidget(text: 'ROUTE', icon: Icons.near_me),
                CustomButtonWidget(text: 'SHARE', icon: Icons.share),
              ],
            ),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: const Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.",
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

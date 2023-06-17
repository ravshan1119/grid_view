import 'package:flutter/material.dart';
import 'package:grid_view/developer_type.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int check = -1;
  bool check1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Home Screen",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Ma'lumotlaringizni kiriting!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...List.generate(list.length, (index) {
                    return DeveloperType(
                        text: list[index],
                        voidCallback: () {
                          check = index;
                          setState(() {});
                        },
                        color: index != check ? Colors.black12 : Colors.green);
                  }),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "18 yoshdan kattamisiz?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    check1 = !check1;
                    setState(() {});
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: check1 ? Colors.black12 : Colors.green,
                    ),
                  ),
                ),
                Text("ha"),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    check1 = !check1;
                    setState(() {});
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: check1 ? Colors.black12 : Colors.green,
                    ),
                  ),
                ),
                Text("yoq"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<String> list = [
  "flutter",
  "golang",
  ".net",
  "frontend",
  "backend",
  "UI-UX",
  "Java",
  "python"
];

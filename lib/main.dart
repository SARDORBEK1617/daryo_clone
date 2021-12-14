import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(
      image: "models.image",
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return HomeScreen(image: '',);
  }
}


class HomeScreen extends StatefulWidget {
  final String image;

  const HomeScreen({Key? key, required this.image}) : super(key: key);

  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daryo'),
        backgroundColor: Colors.lightBlue,
        actions: const [
          Icon(Icons.search),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 162,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Daryo',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        ToggleButtons(
                          borderColor: Colors.white,
                          fillColor: Colors.white,
                          disabledColor: Colors.blue,
                          // borderWidth: 2,
                          selectedBorderColor: Colors.white,
                          selectedColor: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                          children: const[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "LOTINCHA",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "КИРИЛЧА",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                          onPressed: (int index) {
                            setState(() {
                              for (int i = 0; i < isSelected.length; i++) {
                                isSelected[i] = i == index;
                              }
                            });
                          },
                          isSelected: isSelected,
                        ),

                        // Container(
                        //   width: 160,
                        //   height: 30,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(20),
                        //       color: Colors.white,
                        //
                        //   ),
                        //
                        //
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(6.0),
                        //     child: Text(
                        //       "LOTINCHA КИРИЛЧА",
                        //       style: TextStyle(fontSize: 14, color: Colors.blue),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Toshkent',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.filter_drama, color: Colors.white),
                            Text(
                              "+12.0'",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.monetization_on_outlined,
                              color: Colors.white),
                          Text(
                            '10769.78',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Icon(Icons.euro_symbol, color: Colors.white),
                          Text(
                            '12166.62',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Icon(
                            Icons.euro_symbol,
                            color: Colors.white,
                          ),
                          Text(
                            '14617',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 310,
              height: 34,
              color: HexColor('#FEFCBF'),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Qo'llanma ekranini ko'rsatish",
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
            ),
            Container(
              width: 310,
              height: 34,
              color: HexColor('#E8E8E8'),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "So'ngi yangiliklar",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Mahalliy',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  ),
                  Text(
                    'Dunyo',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  ),
                  Text(
                    'Texnalogiyalar',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Tanlangan xabarar',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.green),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Madaniyat',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  ),
                  Text(
                    'Avto',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  ),
                  Text(
                    'Sport',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  ),
                  Text(
                    'Foto',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  ),
                  Text(
                    'Lisestyle',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  ),
                  Text(
                    'Kolumnistlar',
                    style:
                        TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  ),
                  Container(
                    width: 320,
                    height: 44,
                    color: HexColor('#F0F0F0'),
                    child: Text("Afisha",
                        style: TextStyle(
                          height: 2,
                          fontSize: 16,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "SO'NGI YANGILIKLAR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    height: 4,
                    color: Colors.blue),
              ),
              Text(
                "ASOSIY YANGILIKAR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    height: 4,
                    color: Colors.blue),
              ),
              Text(
                "ENG KO'P",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    height: 4,
                    color: Colors.blue),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Mahalliy...",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.blue),
                      ),
                      Row(
                        children: const [
                          Text(
                            "17:30|10 dekabr 2021|",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.grey),
                          ),
                          Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                          Text(
                            "520",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/Picture1.jpg",
                        height: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Andijon davlat universitetida Andijon,"
                          "Farg'ona hamda Namangan viloyatidagi OTM "
                          "tyutorlari uchun seminar-trening o'tkazildi ...",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Dunyo ...",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.blue),
                      ),
                      Row(
                        children: const [
                          Text(
                            "17:30|10 dekabr 2021|",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.grey),
                          ),
                          Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                          Text(
                            "12219",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/Picture2.jpg",
                        height: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Rossiyada O'zbekistonliklar bo'lgan avtobus YTH ga"
                          " uchradi.Hodisa oqibatida haydovchi halok "
                          "bo'lgan,yo'lovchilarning 11 nafari tan jarohati olgan ...",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Image.asset(
                    "images/Picture4.jpg",
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Maslahatlar,Salatlar...",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.blue),
                      ),
                      Row(
                        children: const [
                          Text(
                            "17:30|10 dekabr 2021|",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.grey),
                          ),
                          Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                          Text(
                            "6027",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/Picture3.jpg",
                        height: 100,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Bayram dasturxoniga ko'rk bag'ishlovchi yegulik: kivi va pishloqli buterbrod tayyorlaymiz\n"
                          "Petrushka bilan bezatishni unutmang ...",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Maslahatlar,Salatlar...",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.blue),
                      ),
                      Row(
                        children: const [
                          Text(
                            "17:30|10 dekabr 2021|",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.grey),
                          ),
                          Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                          Text(
                            "4264",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/Picture5.jpg",
                        height: 100,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Bosh og'riganda samara beruvchi tabiiy mahsulotlar."
                          "Aslida bosh og'rig'i mushaklardagi spazm bilan "
                          "bog'liq bo'lishi mumkin ...",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// Future showMyDialog() {
//   return showDialog(
//       context: context,
//       builder: (
//         BuildContext context,
//       ) =>
//           AlertDialog(
//             title: const Text("Xarid qilish:"),
//             content: const Text(
//               "ggjhjgjhghjghg",
//               style: TextStyle(color: Colors.red, fontSize: 22),
//             ),
//             actions: [
//               TextButton(
//                   onPressed: () {
//                     Navigator.pop(context, "no");
//                   },
//                   child: const Text("No")),
//               TextButton(
//                   onPressed: () {
//                     Navigator.pop(context, "ok");
//                   },
//                   child: const Text("Okay")),
//             ],
//           ));
// }
}

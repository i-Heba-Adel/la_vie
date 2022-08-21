import 'package:flutter/material.dart';
import 'package:la_vie/screens/searsh/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isSelectedForAllChip = true;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(
          252,
          252,
          245,
          1
        // 10,54,544,1
      ),
      bottomNavigationBar: Container(
        height: 64,
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              heightFactor: 0.5,
              child: FloatingActionButton(
                onPressed: (){},
                backgroundColor: Color(0xFF1ABC00),
                child: Image.asset(
                  'assets/image/home/home.png'
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (){
                    
                  },
                  icon: Image.asset(
                    'assets/image/home/leave.png'
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Image.asset(
                      'assets/image/home/qr_code_scan.png'
                  ),
                ),
                SizedBox(
                  width: size.width * 0.16,
                ),
                IconButton(
                  onPressed: (){},
                  icon: Image.asset(
                      'assets/image/home/notification.png'
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Image.asset(
                      'assets/image/home/profile.png'
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0 , bottom: 40.0),
              child: Center(
                child: Image.asset(
                  'assets/image/home/lavie_home.png'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context ,
                          MaterialPageRoute(
                            builder: (cont)=> SearchScreen(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(
                            10.0
                          ),
                        ),
                        height: 46,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                'assets/image/home/search.png'
                              ),
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF979797),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10
                      ),
                    ),
                    color: Color(0xFF1ABC00),
                    minWidth: 50,
                    height: 50,
                    onPressed: (){},
                    child: Image.asset(
                      'assets/image/home/cart.png'
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20
              ),
              child: Row(
                children: [
                  Container(
                    // height: 36,
                    // width: 58,
                    // decoration: BoxDecoration(
                    //   color: isSelectedForAllChip ? Color(0xFF1ABC00) :Color.fromRGBO(
                    //       252,
                    //       252,
                    //       245,
                    //       1
                    //     // 10,54,544,1
                    //   ),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ChoiceChip(
                        label: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2
                          ),
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: !isSelectedForAllChip? Color(0xFF1ABC00) : Color(0xFF979797),
                              fontSize: 16.0,
                              fontWeight: !isSelectedForAllChip? FontWeight.w500 : FontWeight.w400,
                            ),
                          ),
                        ),
                        selected: isSelectedForAllChip,
                        onSelected: (newBoolValue){
                          setState(() {
                            isSelectedForAllChip = newBoolValue;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10
                          ),
                        ),
                        selectedColor: Color.fromRGBO(
                            252,
                            252,
                            245,
                            1
                          // 10,54,544,1
                        ),
                        backgroundColor: Color(0xFFF8F8F8),
                      ),
                    ),
                  ),
                  Container(
                    // height: 36,
                    // width: 58,
                    // decoration: BoxDecoration(
                    //   color: isSelectedForAllChip ? Color(0xFF1ABC00) :Color.fromRGBO(
                    //       252,
                    //       252,
                    //       245,
                    //       1
                    //     // 10,54,544,1
                    //   ),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ChoiceChip(
                        label: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2
                          ),
                          child: Text(
                            'Plants',
                            style: TextStyle(
                              color: isSelectedForAllChip? Color(0xFF1ABC00) : Color(0xFF979797),
                              fontSize: 16.0,
                              fontWeight: isSelectedForAllChip? FontWeight.w500 : FontWeight.w400,
                            ),
                          ),
                        ),
                        selected: isSelectedForAllChip,
                        onSelected: (newBoolValue){
                          setState(() {
                            isSelectedForAllChip = newBoolValue;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10
                          ),
                        ),
                        selectedColor: Color.fromRGBO(
                            252,
                            252,
                            245,
                            1
                          // 10,54,544,1
                        ),
                        backgroundColor: Color(0xFFF8F8F8),
                      ),
                    ),
                  ),
                  Container(
                    // height: 36,
                    // width: 58,
                    // decoration: BoxDecoration(
                    //   color: isSelectedForAllChip ? Color(0xFF1ABC00) :Color.fromRGBO(
                    //       252,
                    //       252,
                    //       245,
                    //       1
                    //     // 10,54,544,1
                    //   ),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ChoiceChip(
                        label: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2
                          ),
                          child: Text(
                            'Seeds',
                            style: TextStyle(
                              color: isSelectedForAllChip? Color(0xFF1ABC00) : Color(0xFF979797),
                              fontSize: 16.0,
                              fontWeight: isSelectedForAllChip? FontWeight.w500 : FontWeight.w400,
                            ),
                          ),
                        ),
                        selected: isSelectedForAllChip,
                        onSelected: (newBoolValue){
                          setState(() {
                            isSelectedForAllChip = newBoolValue;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10
                          ),
                        ),
                        selectedColor: Color.fromRGBO(
                            252,
                            252,
                            245,
                            1
                          // 10,54,544,1
                        ),
                        backgroundColor: Color(0xFFF8F8F8),
                      ),
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

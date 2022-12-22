import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white, // غيرنا لون البار
        elevation: 0, // نحدد شدو للبار
        iconTheme: IconThemeData(color: Colors.black), // نحدد ثيم الايقونات
        actions: [
          //نظيف شي للبار  دائما تكون على يمين
          Padding(
            // اضفنا مسافات على جهتين مراعاة للغات وباقي الاجهزة
            padding: const EdgeInsets.only(
                //اضفنا مسافات بين القطع المضافة
                right: 20,
                left: 20), // نفس الكود بدل اونلي نعمل symmetric(horizontal: 20)
            child: Row(
              // داخل صف لازم اعمل جلدرن حتى يصيرون اكثر من واحد
              children: [
                Icon(
                  Icons.language,
                  color: Colors.black, // نغير لون الايقونة او الاستايل و الحجم
                ),
                SizedBox(
                  //عبارةعن كونتيرنر بدون خصائص نعطي فراغ بينهم
                  width: 8,
                ),
                Text(
                  "Englis",
                  style: TextStyle(color: Colors.black),
                ),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          //نعمل سكرول للشاشة دائما كولوم
          child: Column(
        //كولو تاخذ جلدرن
        children: [
          SizedBox(
            //مسافة بين بار والكونتيرنر
            height: 80,
          ),
          Padding(
            // عملنا مسافة قبل الكونتيرنر وبعدها وسط البودي
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              //نعمل كونتيرنر
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(children: [
                //نعمل رو حتى نسفط بالتسلسل
                SizedBox(
                  //نطيق نستخدم بادنك
                  // بعدنا الكونتيرنير عن الحافة
                  width: 2,
                ),
                Container(
                  // نظيف الاشياء بداخلها
                  child: ClipRRect(
                    // نخلي الصورة داخل واجهة
                    borderRadius:
                        BorderRadius.circular(50), // نقص الحواف للواجهة
                    child: CachedNetworkImage(
                      fit: BoxFit.cover, // اخذنا الشكل كامل
                      // اضافة الصورة لازم يكون كود بداخل الجايلد
                      imageUrl:
                          "https://as01.epimg.net/meristation_en/imagenes/2022/07/17/news/1658069215_091445_1658069428_noticia_normal.jpg",
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  decoration: BoxDecoration(
                    //لاضافة شكل
                    // اضفنا شكل دائرة
                    shape: BoxShape.circle, //حددنا نوع الشكل
                    color: Colors.red,
                  ),
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  //مسافة بين الشكل والعنصر التالي
                  width: 10,
                ),
                Column(
                  //راح نعمل كولوم حتى نسفط بالطول
                  mainAxisAlignment: MainAxisAlignment
                      .center, //وسطنا العامود مالنا (هذا محور اساسي عامودي)
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // صارو نفس المستوى  ( المحور الثانوي الافقي)
                  children: [
                    //كولو ياخذ جلدرن
                    Text(
                      // اول عنصر تيكست
                      "Ahmed Muthanna",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      //عملنا مسافة بين التكست وعنصر الي بعده
                      height: 5,
                    ),
                    Row(
                      //هسع نعمل روو لان عدنا عنصرين شكل وتيكست
                      children: [
                        //روو ياخذ جلدرن
                        Icon(
                          // اول شي الايقونة
                          Icons.location_pin,
                          color: Colors.grey,
                        ),
                        Text(
                          //ثاني شي تكست
                          "Iraq Mosul",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        )
                      ],
                    )
                  ],
                )
              ]),
            ),
          ), // الى هنا طلعنا من كونتيرنير الافقي
          SizedBox(
            //نعمل مسافة بين كونتيرنر السابق والتالي
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              // عملنا مسافة
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold), //عملنا خط بولد
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              // هذي عملنا بيها التقوس للكونتيرنير
              borderRadius: BorderRadius.circular(10), //نتحكم بقيمة حسب ما نريد
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: CachedNetworkImage(
                  fit: BoxFit.fill, // هذا كود عملنا صورة تاخذ كل المكان

                  // اضافة الصورة لازم يكون كود بداخل الجايلد
                  imageUrl:
                      "https://ericbrown.com/wp-content/uploads/2015/08/meeting-challenge-icd-10.jpg",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                decoration:
                    BoxDecoration(boxShadow: [BoxShadow(color: Colors.black)]),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Text(
                "Your Courses",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              //  نعمل كونتيرنر جديد  للافقي
              width: MediaQuery.of(context).size.width,
              height: 150, //نحدد حجم
              child: SingleChildScrollView(
                  //نعمل سكرول
                  scrollDirection: Axis.horizontal, //نحدد الاتجاه الافقي
                  child: Row(children: [
                    //نعمل رو
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      color: Color.fromARGB(239, 255, 174, 44),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              child: Text(
                                "Spanish",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Begginer",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      color: Color.fromARGB(238, 73, 230, 112),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              child: Text(
                                "Italian",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Advanced",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      color: Color.fromARGB(237, 60, 188, 192),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              child: Text(
                                "English",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Begginer",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ]))),
          SizedBox(
            height: 50,
          ),
        ],
      )),
    );
  }
}

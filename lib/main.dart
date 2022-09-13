import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            Divider(
              height: 5,
              indent: 60,
              endIndent: 60,
            ),
            Text(
              'Recipes',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.orange, fontSize: 24, fontFamily: 'Montserrat'),
            ),
            Divider(
              height: 5,
              indent: 40,
              endIndent: 40,
            ),
            Text(
              'Главная',
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontFamily: 'Montserrat'),
            ),
            Divider(
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              'Рецепты',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                  fontFamily: 'Montserrat'),
            ),
            Divider(
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              'Избранное',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                  fontFamily: 'Montserrat'),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 120, top: 6,),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.account_circle,
                    color: Colors.orange,
                    size: 38,
                  ),
                  SizedBox(width: 14,),
                  Text('Войти',
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            const SizedBox(
              height: 200,
              width: 120,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 200, 0, 0),
                padding: EdgeInsets.all(0),
                width: 550,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Готовь и делись рецептами',
                      style: TextStyle(
                        fontSize: 72,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto Flex',
                        color: Color(0xff25292D)
                      ),
                      ),
                      const SizedBox(height: 42,),
                      const Text(
                        'Никаких кулинарных книг и блокнотов! Храни все любимые рецепты в одном месте.',
                        style: TextStyle(
                          fontFamily: "Roboto Flex",
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          color: Color(0xff4A525A)
                        ),),
                        SizedBox(height: 42,),
                        Row(
                          children: [
                            SizedBox(height: 58,),
                            Container(
                              width: 278, 
                              height: 60, 
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)
                                  )
                                ), 
                                ),
                                onPressed: (){}, 
                                child: const Text(
                                  'Добавить рецепт',
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                  ),
                                  ),
                                  ),
                            const SizedBox(width: 28,),
                            SizedBox(
                              width: 216,
                              height: 60,
                              child: ElevatedButton(
                                
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)
                                  )
                                ), 
                                ),
                                onPressed: (){}, 
                                child: const Text(
                                  'Войти'
                                  ),
                                  ),
                                  ),
                          ],
                        ),
                  ],
                ),
              ),
              Container(
                width: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                  SizedBox(height: 352,),
                        Text(
                          'Умная сортировка по тегам',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 42,
                            color: Color(0xff25292D),
                          )
                          ),
                          SizedBox(height: 16,),
                        Text(
                          'Добавляй рецепты и указывай наиболее популярные теги. Это позволит быстро находить любые категории.',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff4A525A),
                          )
                          ),
                ],)
              ),
              Container(
                alignment: Alignment.center,
                width: 1200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    width: 278,
                    height: 271,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white, 
                      ),
                    child: const table_widget(
                      text1: "Простые блюда",
                      text2: "Время приготвления таких блюд не более 1 часа", 
                      iconString: 'image/ic-menu.png',),
                      
                  ),
                  Container(
                    width: 278,
                    height: 271,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white, 
                      ),
                    child: const table_widget(
                      text1: "Детское",
                      text2: "Самые полезные блюда которые можно детям любого возраста", 
                      iconString: 'image/ic-menu.png',),
                  ),
                  Container(
                    width: 278,
                    height: 271,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white, 
                      ),
                    child: const table_widget(
                      text1: "От шеф-поваров",
                      text2: "Требуют умения, времени и терпения, зато как в ресторане", 
                      iconString: 'image/ic-menu.png',),
                  ),
                  Container(
                    width: 278,
                    height: 271,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white, 
                      ),
                    child: const table_widget(
                      text1: "На праздник",
                      text2: "Чем удивить гостей, чтобы все были сыты за праздничным столом", 
                      iconString: 'image/ic-menu.png',),
                  ),
                ],)
              ),
              Container(
                width: 1129,
                color: Colors.red,
                height: 543,
                margin: EdgeInsets.only(top: 157),
                child: Expanded(
                  child: Row(
                    children: [
                      Image.asset('image/Rectangle8.png'),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(children: [
                          Icon(Icons.favorite_border),
                          Text('356'),
                          Icon(Icons.lock_clock_outlined),
                          Text('35 минут'),
                        ],)
                      )
                    ]
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: Align(
            alignment: Alignment.topRight,
            child: Image.asset("image/Rectangle1.png", width: 602, height: 800,),))
          ],
        ),
      ),
    );
  }
}

class table_widget extends StatelessWidget {
  final String text1;
  final String text2;
  final String iconString;
  const table_widget({
    Key? key, required this.text1, required this.text2, required this.iconString
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(24, 24, 0, 0),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffFFEFCC)
          ),
          child: Image.asset(iconString, height: 24, width: 24,),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(24, 24, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1,
              style: const TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),),
              SizedBox(height: 16,),
              Text(text2,
              style: const TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                fontSize: 18,
        ),
        )
            ],
          ),
        ),
      ],
    );
  }
}
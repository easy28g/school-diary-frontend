import 'package:flutter/material.dart';

class SignInDairy extends StatefulWidget{

  const SignInDairy({super.key});

  @override
  State<SignInDairy> createState() => _SignInDairyState();
}

class _SignInDairyState extends State<SignInDairy> {

  String firstName = '';
  String secondName = ''; // Примеры
  String pinCode = '';

  void signIn(String firstName, String secondName, String pinCode) {
    // Здесь вы можете добавить код для проверки логина и пароля
    // и выполнить необходимые действия в случае успешного входа

    if (firstName == 'i' && secondName == 'f' && pinCode == 'c') {
      Navigator.pushReplacementNamed(context, '/students-home');
      print('Вход выполнен успешно');
    } else if (firstName == 'a' && secondName == 'a' && pinCode == 'a') {
      Navigator.pushReplacementNamed(context, '/teachers-home');
      print('Вход выполнен успешно');
    } else if (firstName == 'p' && secondName == 'p' && pinCode == 'p') {
      Navigator.pushReplacementNamed(context, '/parents-home');
      print('Вход выполнен успешно');
    } else if (firstName == 'm' && secondName == 'm' && pinCode == 'm') {
      Navigator.pushReplacementNamed(context, '/managers-home');
      print('Вход выполнен успешно');
    } else if (firstName == 's' && secondName == 's' && pinCode == 's') {
      Navigator.pushReplacementNamed(context, '/admins-home');
      print('Вход выполнен успешно');
    } else {
      print('Такой пользователь не найден!');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('VibeTime'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Күндөлүк'),
            Container(
              width: 250, // Задаем ширину TextField
              child: TextField(
                onChanged: (value) {
                  // Здесь можно обновлять переменную с логином при вводе
                  firstName = value;
                },
                decoration: InputDecoration(
                  labelText: 'Имя',
                ),
              ),
            ),
            Container(
              width: 250, // Задаем ширину TextField
              child: TextField(
                onChanged: (value) {
                  // Здесь можно обновлять переменную с паролем при вводе
                  secondName = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Фамилия',
                ),
              ),
            ),
            Container(
              width: 250, // Задаем ширину TextField
              child: TextField(
                onChanged: (value) {
                  // Здесь можно обновлять переменную с логином при вводе
                  pinCode = value;
                },
                decoration: InputDecoration(
                  labelText: 'пин код',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                signIn(firstName, secondName, pinCode);
              },
              child: Text('Войти'),
            ),
            SizedBox(height: 10), // Добавляем небольшой отступ между кнопками
          ],
        ),
      ),
    );
  }
}
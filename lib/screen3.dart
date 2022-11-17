import 'package:flutter/material.dart';

class Screen3Reels extends StatelessWidget {
  const Screen3Reels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=389&q=80',
        'nameUser': 'Luis Villasmil',
        'img2':
            'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=389&q=80',
      },
      {
        'img':
            'https://images.unsplash.com/photo-1626847152035-cb3f14d8534b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        'nameUser': 'Joel Urcia',
        'img2':
            'https://images.unsplash.com/photo-1626847152035-cb3f14d8534b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      },
      {
        'img':
            'https://images.unsplash.com/photo-1553197965-096ced3bf9df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        'nameUser': 'David Billings',
        'img2':
            'https://images.unsplash.com/photo-1553197965-096ced3bf9df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      },
      {
        'img':
            'https://images.unsplash.com/photo-1569173112611-52a7cd38bea9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        'nameUser': 'Mishell Perea',
        'img2':
            'https://images.unsplash.com/photo-1569173112611-52a7cd38bea9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      },
      {
        'img':
            'https://images.unsplash.com/photo-1616356257367-9cd4bf56a45e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        'nameUser': 'Alvaro Cruz',
        'img2':
            'https://images.unsplash.com/photo-1616356257367-9cd4bf56a45e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            //
            PageView.builder(
              itemCount: data.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                final datos = data[index];
                return _TiktokWidget(
                  img: datos['img'],
                  nameUser: datos['nameUser'],
                  img2: datos['img2'],
                );
              },
            ),

            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: const [
                      SizedBox(width: 15.0),
                      Text(
                        'Reels',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TiktokWidget extends StatelessWidget {
  final String? img;
  final String? nameUser;
  final String? img2;

  const _TiktokWidget({super.key, this.img, this.nameUser, this.img2});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          img!,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('$img2'),
                        radius: 15,
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        nameUser!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      const Icon(
                        Icons.verified,
                        color: Colors.white,
                        size: 15,
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 25.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(
                                0, 255, 255, 255), //PARA PROBAR CONTAINER
                            borderRadius: BorderRadius.circular(5.0),
                            border:
                                Border.all(color: Colors.white, width: 1.5)),
                        child: const Text(
                          'Seguir',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    '#Photo #Instamoment #Reels',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.music_note,
                        size: 15,
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        nameUser!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      const Icon(
                        Icons.circle,
                        size: 3,
                      ),
                      const SizedBox(width: 5.0),
                      const Text(
                        'Audio original',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                      Text(
                        '100',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Column(
                    children: const [
                      Icon(
                        Icons.comment_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        '145',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Column(
                    children: const [
                      Icon(
                        Icons.switch_access_shortcut_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Column(
                    children: const [
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.white, //PARA PROBAR CONTAINER
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                        image: NetworkImage('$img2'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

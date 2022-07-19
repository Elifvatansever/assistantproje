import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'assistant',
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.notifications_none,
            color: Colors.grey,
            size: 30,
          ),
          CircleAvatar(
            radius: 18.0,
            child: Image(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS47ASN-MW8K-nV9Ck_UZmUFmPF-vRavR5zOA&usqp=CAU'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.people,
                                      size: 50,
                                      color: Colors.green,
                                    )
                                  ],
                                ),
                                const Text(
                                  'Aktif Danışan',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 132, 129, 129),
                                    fontSize: 15,
                                  ),
                                ),
                                const Text(
                                  '36',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 50,
                                      color: Colors.green,
                                    )
                                  ],
                                ),
                                const Text(
                                  'Randevu',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 132, 129, 129),
                                    fontSize: 15,
                                  ),
                                ),
                                const Text(
                                  '6',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.flatware,
                                      size: 50,
                                      color: Colors.green,
                                    )
                                  ],
                                ),
                                const Text(
                                  'Gelen Tarif',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 132, 129, 129),
                                    fontSize: 15,
                                  ),
                                ),
                                const Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Bugünün Randevuları',
                      style: TextStyle(
                          color: Color.fromARGB(255, 54, 51, 51),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 25,
                        )),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 6,
                      shrinkWrap: true,
                      children: const [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Aş',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          shadowColor: Colors.grey,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Ze',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Nk',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Tu',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Image(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkspTGDaYI0SloxfqGWTJMZYniyE8q9oqahw&usqp=CAU'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Image(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    decoration: const BoxDecoration(
                      color: Color(0xFFf4f3ee),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.people,
                          color: Colors.grey,
                        ),
                        Text('Danışan')
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    decoration: const BoxDecoration(
                      color: Color(0xFFf4f3ee),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                        Text('Randevularım')
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    decoration: const BoxDecoration(
                      color: Color(0xFFf4f3ee),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        Text('Ayarlar')
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    decoration: const BoxDecoration(
                      color: Color(0xFFf4f3ee),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.article_outlined,
                          color: Colors.grey,
                        ),
                        Text('Blog')
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    decoration: const BoxDecoration(
                      color: Color(0xFFf4f3ee),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.flatware,
                          color: Colors.grey,
                        ),
                        Text('Tarifler')
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    decoration: const BoxDecoration(
                      color: Color(0xFFf4f3ee),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.help,
                          color: Colors.grey,
                        ),
                        Text('Yardım')
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

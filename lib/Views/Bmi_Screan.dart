
import 'package:flutter/material.dart';

class Bmi_Screan extends StatefulWidget {
  const Bmi_Screan({Key? key}) : super(key: key);

  @override
  State<Bmi_Screan> createState() => _Bmi_ScreanState();
}

class _Bmi_ScreanState extends State<Bmi_Screan> {
  double Hight = 0;
  int Wight = 55;
  int Age = 0;
  double ? Result ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0c0d21),
      appBar: AppBar(
        backgroundColor: const Color(0xff0c0d21),
        elevation: 0.0,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 25,
                        ),
                        Icon(
                          Icons.male,
                          size: 70,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 25,
                        ),
                        Icon(
                          Icons.female,
                          size: 70,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
                color: Colors.white12, borderRadius: BorderRadius.circular(24)),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Height',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.white70),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${Hight.toInt()}",
                  style: const TextStyle(color: Colors.white, fontSize: 60),
                ),
                Slider(
                    activeColor: const Color(0xffec1455),
                    min: 0.0,
                    max: 150,
                    value: Hight,
                    onChanged: (value) {
                      setState(() {
                        Hight = value;
                      });
                    })
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Weight',
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '$Wight',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 55),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20)
                              .add(const EdgeInsets.only(bottom: 10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24)),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Wight--;
                                      });
                                    },
                                    icon: const Icon(Icons.remove)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24)),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Wight++;
                                      });
                                    },
                                    icon: const Icon(Icons.add)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Age',
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '$Age',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 55),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20)
                              .add(const EdgeInsets.only(bottom: 10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(24)),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Age--;
                                      });
                                    },
                                    icon: const Icon(Icons.remove)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(24)),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Age++;
                                      });
                                    },
                                    icon: const Icon(Icons.add)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Result = (Hight / Age *2 );
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Container(
                  margin: const EdgeInsets.only(
                    bottom: 400
                  ),
                  padding: const EdgeInsets.all(16),
                  height: 150,
                  decoration: BoxDecoration(
                      color: const Color(0xffec1455),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('The Result ',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('The Result of Bmi = ${Result!} ',style: const TextStyle(
                          color: Colors.white,
                        fontSize: 20
                      ),),

                    ],
                  ),
                ),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ));
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  color: const Color(0xffec1455),
                  borderRadius: BorderRadius.circular(24)),
              child: const Center(
                child: Text(
                  'CalCulate ',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

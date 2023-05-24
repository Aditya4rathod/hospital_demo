

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class TestimonialsPage extends StatefulWidget {
  const TestimonialsPage({Key? key}) : super(key: key);

  @override
  State<TestimonialsPage> createState() => _TestimonialsPageState();
}

class _TestimonialsPageState extends State<TestimonialsPage> {
  List<Map<String, dynamic>> test = [
    {
      'name': 'phoebe buffay',
      'pic':
          "https://media.istockphoto.com/id/1046447804/photo/in-the-hospital-sick-male-patient-sleeps-on-the-bed-heart-rate-monitor-equipment-is-on-his.jpg?s=612x612&w=0&k=20&c=okoIEyjs22DW0Vb2wCxHGemh2k_44wCo439Q2t2MYsw=",
      'date': '14/3/2023',
      'desc':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
    },
    {
      'name': 'phoebe buffay',
      'date': '14/3/2023',
      'pic':
          "https://media.istockphoto.com/id/1046447804/photo/in-the-hospital-sick-male-patient-sleeps-on-the-bed-heart-rate-monitor-equipment-is-on-his.jpg?s=612x612&w=0&k=20&c=okoIEyjs22DW0Vb2wCxHGemh2k_44wCo439Q2t2MYsw=",
      'desc':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
    },
    {
      'name': 'phoebe buffay',
      'date': '14/3/2023',
      'pic':
          "https://media.istockphoto.com/id/1046447804/photo/in-the-hospital-sick-male-patient-sleeps-on-the-bed-heart-rate-monitor-equipment-is-on-his.jpg?s=612x612&w=0&k=20&c=okoIEyjs22DW0Vb2wCxHGemh2k_44wCo439Q2t2MYsw=",
      'desc':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
    },
    {
      'name': 'phoebe buffay',
      'date': '14/3/2023',
      'pic':
          "https://media.istockphoto.com/id/1046447804/photo/in-the-hospital-sick-male-patient-sleeps-on-the-bed-heart-rate-monitor-equipment-is-on-his.jpg?s=612x612&w=0&k=20&c=okoIEyjs22DW0Vb2wCxHGemh2k_44wCo439Q2t2MYsw=",
      'desc':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
    },
    {
      'name': 'phoebe buffay',
      'date': '14/3/2023',
      'pic':
          "https://media.istockphoto.com/id/1046447804/photo/in-the-hospital-sick-male-patient-sleeps-on-the-bed-heart-rate-monitor-equipment-is-on-his.jpg?s=612x612&w=0&k=20&c=okoIEyjs22DW0Vb2wCxHGemh2k_44wCo439Q2t2MYsw=",
      'desc':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
    },
    {
      'name': 'phoebe buffay',
      'date': '14/3/2023',
      'pic':
          "https://media.istockphoto.com/id/1046447804/photo/in-the-hospital-sick-male-patient-sleeps-on-the-bed-heart-rate-monitor-equipment-is-on-his.jpg?s=612x612&w=0&k=20&c=okoIEyjs22DW0Vb2wCxHGemh2k_44wCo439Q2t2MYsw=",
      'desc':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
    },
  ];

  List<Map<String, dynamic>> filteredData = [];

  @override
  void initState() {
    filteredData = test;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black87,
          size: 20,
        ),
        title: Text(
          'Testimonials',
          style: Theme.of(context).textTheme.headline6
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: test.length,
            itemBuilder: (context, index) {
              var item = filteredData[index];
              return Card(
                elevation: 3,
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                         CircleAvatar(
                           backgroundColor: Colors.grey,
                         ),
                          SizedBox(
                            width: 10,
                          ),
                          Text.rich(
                            TextSpan(
                                text: '${item['name'].toString()}\n',
                                style: Theme.of(context).textTheme.titleMedium,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '${item['date'].toString()}\n',
                                    style: Theme.of(context).textTheme.caption
                                  )
                                ]),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: 4,
                              itemCount: 5,
                              itemSize: 18,
                              itemBuilder: (context , _) => Icon(Icons.star,color: Colors.orangeAccent,))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              item['desc'].toString(),
                              style: Theme.of(context).textTheme.caption
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PhotosScreen extends StatefulWidget {
  const PhotosScreen({Key? key}) : super(key: key);

  @override
  State<PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {

  List<String> images = [
 "https://media.istockphoto.com/id/1046447804/photo/in-the-hospital-sick-male-patient-sleeps-on-the-bed-heart-rate-monitor-equipment-is-on-his.jpg?s=612x612&w=0&k=20&c=okoIEyjs22DW0Vb2wCxHGemh2k_44wCo439Q2t2MYsw=",
    "https://images.unsplash.com/photo-1538108149393-fbbd81895907?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG9zcGl0YWx8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
    "https://thumbs.dreamstime.com/b/doctors-hospital-corridor-nurse-pushing-gurney-stretcher-bed-male-senior-female-patient-32154012.jpg",
    "https://images.pexels.com/photos/3769151/pexels-photo-3769151.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-3769151.jpg&fm=jpg",
   "https://media.istockphoto.com/id/1255594215/photo/healthcare-workers-intubating-a-covid-patient.jpg?s=612x612&w=0&k=20&c=sjyGsAThfHrN5h2h_Kf2Vn1ABBusmLxtbBBF9BstQlU=",
    "https://cdn.britannica.com/27/93827-050-A91D558F/Patient-dialysis-treatment.jpg",
    "https://media.istockphoto.com/id/1046447804/photo/in-the-hospital-sick-male-patient-sleeps-on-the-bed-heart-rate-monitor-equipment-is-on-his.jpg?s=612x612&w=0&k=20&c=okoIEyjs22DW0Vb2wCxHGemh2k_44wCo439Q2t2MYsw=",
    "https://images.unsplash.com/photo-1538108149393-fbbd81895907?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG9zcGl0YWx8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
    "https://thumbs.dreamstime.com/b/doctors-hospital-corridor-nurse-pushing-gurney-stretcher-bed-male-senior-female-patient-32154012.jpg",
    "https://images.pexels.com/photos/3769151/pexels-photo-3769151.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-3769151.jpg&fm=jpg",
    "https://media.istockphoto.com/id/1255594215/photo/healthcare-workers-intubating-a-covid-patient.jpg?s=612x612&w=0&k=20&c=sjyGsAThfHrN5h2h_Kf2Vn1ABBusmLxtbBBF9BstQlU=",
    "https://cdn.britannica.com/27/93827-050-A91D558F/Patient-dialysis-treatment.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
              color: Colors.black87,
          size: 20,
        ),
        title: Text('Photos',
        style: Theme.of(context).textTheme.headline6),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 2.0
          ),
          itemBuilder: (BuildContext context, int index){
            return Card(
              margin: EdgeInsets.all(10),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(
                      images[index],
                    ),
                    fit: BoxFit.fill
                  )
                )
              ),
            );
          },
        ),
      ),
    );



  }
}

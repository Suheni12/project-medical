import 'package:flutter/material.dart';
import 'package:medical_mobile_app/data/data.dart';

class ProfileDetails extends StatelessWidget {
  ProfileDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var patient = users.patients![0];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black87),
        ),
        elevation: 0.0,
        title: Text(
          "Profil lengkap",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        toolbarHeight: 80.0,
        actions: [SizedBox()],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color(0xFFCEE0F4),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundColor: Colors.grey.shade200,
                        backgroundImage: AssetImage(
                            "assets/images/patients/${patient.imgUrl}"),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "${patient.name} ${patient.surname}\n",
                        children: [
                          TextSpan(
                            text: "${patient.gender}",
                            style: TextStyle(
                              color: Colors.blue.shade300,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color(0xFF0052A8),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Row(
                  children: [
                    Text(
                      "Bagikan milik Anda \nprofil pelajar",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF00DCA7),
                          borderRadius: BorderRadius.circular(20.0)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                      child: Text(
                        "Bagikan Profil",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail Pelajar",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          _info("Name", "${patient.name}"),
                          _info("Nama belakang", "${patient.surname}"),
                          _info("Tanggal lahir", "${patient.birthDate}"),
                          _info("Kota", "${patient.city}"),
                          _info("Negara", "${patient.country}"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profil Bersama",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 10.0),
                            decoration: BoxDecoration(
                                color: Color(0xFFCEE0F4),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Text(
                              "Dec 8\n8.30 AM",
                              style: TextStyle(
                                color: Color(0xFF0052A8),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text.rich(
                            TextSpan(
                              text: "Indah Sari\n",
                              children: [
                                TextSpan(
                                  text: "7 views",
                                  style: TextStyle(
                                    color: Color(0xFF00DCA7),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                  height: 1.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _info(String title, String data) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            data,
            style: TextStyle(
              color: Color(0xFF0052A8),
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

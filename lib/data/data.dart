import 'package:medical_mobile_app/models/doctor.dart';
import 'package:medical_mobile_app/models/patient.dart';
import 'package:medical_mobile_app/models/user.dart';

final users = User(
  patients: [
    ///
    Patient(
      name: "Henny",
      surname: "Simpson",
      gender: "Female",
      birthDate: "November 13, 2001 (30y)",
      city: "Pangkalpinang",
      country: "Indonesia",
      imgUrl: "heni.jpeg",
    ),
    Patient(
      name: "James",
      surname: "Robert",
      gender: "Male",
      birthDate: "July 16, 1989",
      city: "London",
      country: "United Kingdom",
      imgUrl: "taqim_taqim.jpeg",
    ),
    Patient(
      name: "Jennifer",
      surname: "Simpson",
      gender: "Female",
      birthDate: "July 16, 1980",
      city: "London",
      country: "United Kingdom",
      imgUrl: "td.jpg",
    ),
    Patient(
      name: "Michael",
      surname: "John",
      gender: "Male",
      birthDate: "July 16, 1978",
      city: "London",
      country: "United Kingdom",
      imgUrl: "he.jpg",
    ),
    Patient(
      name: "James",
      surname: "Robert",
      gender: "Male",
      birthDate: "July 16, 1989",
      city: "London",
      country: "United Kingdom",
      imgUrl: "hg.jpg",
    ),
    Patient(
      name: "Jennifer",
      surname: "Simpson",
      gender: "Female",
      birthDate: "July 16, 1980",
      city: "London",
      country: "United Kingdom",
      imgUrl: "james.jpg",
    ),
  ],

  /// doctors
  doctors: [
    Doctor(name: "john", role: "Video Consultatino", imgUrl: "doctor2.png"),
    Doctor(
        name: "Mustofa",
        role: "Video Consultatino",
        imgUrl: "ayang_ayang.jpeg"),
    Doctor(name: "rely", role: "Video Consultatino", imgUrl: "hh.jpg"),
    Doctor(name: "Kowalsky", role: "Video Consultatino", imgUrl: "th.jpg"),
  ],
);

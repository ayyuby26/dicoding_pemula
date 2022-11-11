import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF2d3e4f);

final curriculum = ["gocloud.png", "godev.png", "gopartner.jpeg"];
final learningPath = [
  "aws.png",
  "ibm.png",
  "google.png",
  "line.png",
  "microsoft.png"
];

String get partnerPath => "assets/partner_logo/";

final courses = [
  {
    "name": "Android Developer",
    "class": 6,
    "desc":
        "Kurikulum didesain dengan persetujuan dari Tim Google Android untuk mempersiapkan developer Android standar Global. Dicoding adalah Google Developer Authorized Training Partner.",
  },
  {
    "name": "Back-End Developer",
    "class": 6,
    "desc":
        "Kurikulum disusun oleh Dicoding bersama AWS beserta pelaku industri Back-End Development. Siswa dipersiapkan untuk menjadi Back-End Developer sesuai kebutuhan industri.",
  },
  {
    "name": "Front-End Web Developer",
    "class": 4,
    "desc":
        "Kurikulum disusun oleh Dicoding dan pelaku industri di bidang Web Development. Siswa dipersiapkan untuk menjadi Front-End Web Developer sesuai standar kebutuhan industri.",
  },
  {
    "name": "iOS Developer",
    "class": 5,
    "desc":
        "Kurikulum disusun oleh Dicoding dan pelaku industri di bidang iOS Development. Siswa dipersiapkan untuk menjadi iOS Developer sesuai standar kebutuhan industri.",
  },
  {
    "name": "Machine Learning Developer",
    "class": 5,
    "desc":
        "Kurikulum lengkap yang disusun oleh Dicoding bersama IBM dan Google beserta pelaku industri. Siswa dipersiapkan untuk menjadi Machine Learning Developer sesuai standar kebutuhan industri.",
  },
];

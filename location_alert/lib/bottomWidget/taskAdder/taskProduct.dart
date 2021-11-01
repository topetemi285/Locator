import 'package:flutter/material.dart';

//AMPS
class Task {
  final String image,title,description;
  final int id;
  final Color color;
  Task ({
    this.id,
    this.image,
    this.title,
    this.description,
    this.color
  });
}

List<Task>Tasks=[
  Task(
      id: 0,
      title: "Meet Someone",
      description:'1. Keep calm and reassure te casuality. Get them to use their inhaler ',
      image: "https://cdn.shopify.com/s/files/1/0332/7761/products/RX55URIBT_Angle_1024x1024.jpeg?v=1477504437",
      color: Colors.black
  ),  Task(
      id: 1,
      title: "Buy Glories",
      description:'1. Keep calm and reassure te casuality. Get them to use their inhaler',
      image: "https://th.bing.com/th/id/OIP.4408na4b26yMP0O4-AIG2gAAAA?pid=Api&w=318&h=318&rs=1",
      color: Colors.black
  ),
  Task(
      id: 2,
      title: "PickUp Someone",
      description:'1. Keep calm and reassure te casuality. Get them to use their inhaler',
      image: "https://th.bing.com/th/id/OIP.07BPOjcAgtC_Pt81j65W6AHaE8?pid=Api&rs=1",
      color: Colors.black
  ),
  Task(
      id: 3,
      title: "Pickup Food",
      description:'1. Keep calm and reassure te casuality. Get them to use their inhaler',
      image: "https://www.pyleaudio.com/1000/PCAU44.jpg",
      color: Colors.black
  ), Task(
      id: 4,
      title: "Attend Lectures",
      description:'1. Keep calm and reassure te casuality. Get them to use their inhaler',
      image: "https://c.shld.net/rpx/i/s/i/spin/10129818/prod_2351439712??hei=64&wid=64&qlt=50",
      color: Colors.black
  ),
];


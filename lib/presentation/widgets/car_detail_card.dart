import 'package:flutter/material.dart';
import 'package:rentacar/data/models/car.dart';

class CarDetailCard extends StatelessWidget {
  final Car car;
  const CarDetailCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/car_image.png',
            height: 120,
          ),
          Text(
            car.model,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/gps.png',
                        width: 24, // Boyut belirtildi
                        height: 24, // Boyut belirtildi
                      ),
                      Text(' ${car.distance.toStringAsFixed(0)}km'),
                    ],
                  ),
                  const SizedBox(
                      width: 10), // Row'lar arasında boşluk eklemek için
                  Row(
                    children: [
                      Image.asset(
                        'assets/pump.png',
                        width: 24, // Boyut belirtildi
                        height: 24, // Boyut belirtildi
                      ),
                      Text(' ${car.fuelCapacity.toStringAsFixed(0)}L'),
                    ],
                  ),
                ],
              ),
              Text(
                '\$${car.pricePerHour.toStringAsFixed(2)}/h',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Task 5: Travel Destination Card
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Travel Destination')),
      body: Center(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
                child: Image.network(
                  'https://travel.usnews.com/dims4/USNEWS/98abf8a/2147483647/resize/976x652%5E%3E/crop/976x652/quality/85/format/webp/?url=https%3A%2F%2Ftravel.usnews.com%2Fimages%2FHa_Penny_Bridge-Peter_Unger-Getty.jpg',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'The Ha Penny Bridge',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Icon(Icons.flag, color: Colors.blue, size: 16),
                        SizedBox(width: 4),
                        Text('Dublin, Ireland'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Icon(
                            index < 4 ? Icons.star : Icons.star_half,
                            color: Colors.amber,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text('4.5'),
                      ],
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
}

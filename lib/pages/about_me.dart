// Task 9: About Me Layout
import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Me')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Ahmed Waheed',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Flutter Developer',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 16),
            const Text(
              'About Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'I am a passionate mobile developer with 1 years of experience creating beautiful and functional applications. I specialize in Flutter development and enjoy solving complex problems with elegant solutions.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 16),
            const Text(
              'Skills',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildSkillChip('Flutter'),
                _buildSkillChip('Dart'),
                _buildSkillChip('Firebase'),
                _buildSkillChip('API Integration'),
                _buildSkillChip('State Management'),
                _buildSkillChip('Responsive Design'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Chip(
      label: Text(skill),
      backgroundColor: Colors.blue[50],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}

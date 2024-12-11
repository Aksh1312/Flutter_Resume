import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Resume'),
        backgroundColor: Colors.blueAccent,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                    'assets/profile_picture.jpg'), // Replace with your image
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Akshaya L R', // Your Name
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Center(
              child: Text(
                'CSE Student', // Your Job Title
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Divider(height: 40, color: Colors.blueAccent),
            _buildSectionTitle('Contact Information'),
            _buildInfoCard([
              'Phone: +123 456 7890', // Your Phone
              'Email: akshayalr2005@gmail.com', // Your Email
              'LinkedIn: linkedin.com/in/akshaya', // Your LinkedIn
              'GitHub: github.com/akshaya', // Your GitHub
            ]),
            _buildSectionTitle('Skills'),
            _buildInfoCard([
              '• Flutter & Dart',
              '• Python ',
            ]),
            _buildSectionTitle('Education'),
            _buildInfoCard([
              ' PSG Itech | B.E in Computer Science | 2023',
              'Course Highlights: Data Structures, Algorithms, AI, Web Development',
            ]),
            _buildSectionTitle('Experience'),
            _buildInfoCard([
              'Software Developer | ABC Tech | Jan 2023 - Present',
              '• Developed mobile apps using Flutter and Dart',
              '• Worked on backend APIs using Python and Django',
              '• Collaborated in Agile teams to deliver product features',
              '• Achievements: Reduced app load time by 30% in 6 months',
            ]),
            _buildSectionTitle('Projects'),
            _buildInfoCard([
              'Project 1: Weather App | Flutter, OpenWeather API',
              '• An app to check weather forecasts based on location',
              '• Features: Real-time data, push notifications, and weather maps',
              'Project 2: Todo App | Flutter, Firebase',
              '• A task management app with real-time syncing and notifications',
            ]),
            _buildSectionTitle('Certifications'),
            _buildInfoCard([
              'C Certification | SkillUp | 2024',
              'Gemini in google sheets Certification | SkillUp | 2024',
            ]),
            _buildSectionTitle('Languages'),
            _buildInfoCard([
              '• English (Intermediate)',
              '• Tamil (Intermediate)',
            ]),
            _buildSectionTitle('Achievements'),
            _buildInfoCard([
              '• Participated in XYZ Hackathon ',
            ]),
            _buildSectionTitle('Hobbies & Interests'),
            _buildInfoCard([
              '• Photography',
              '• Editing',
            ]),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  Widget _buildInfoCard(List<String> infoList) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: infoList
              .map((info) => Text(info,
                  style: TextStyle(fontSize: 16, color: Colors.black87)))
              .toList(),
        ),
      ),
    );
  }
}

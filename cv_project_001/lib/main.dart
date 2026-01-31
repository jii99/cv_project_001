import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4D6D8),
      body: Center(
        child: Container(
          width: 900,
          height: 620,
          color: Colors.white,
          child: Row(
            children: [
              // ================= LEFT PANEL =================
              Container(
                width: 280,
                color: const Color(0xFF4B4F52),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('lib/chhornsophort.jpg'),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "CHHORN SOPHORT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "INTERNSHIP",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        letterSpacing: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),

                    SectionTitle("Contact"),
                    SectionText(
                      "+855 16338098\n"
                      "sophortchhorn@gmail.com\n"
                      "21B St, Phum Kohkorbey,\n"
                      "Sangkat Prek Tmey, Khan Chbar Ampov,\n"
                      "Phnom Penh, Cambodia",
                    ),

                    const SizedBox(height: 20),
                    SectionTitle("Skills"),
                    SectionText(
                      "• Networking\n"
                      "• Teamwork\n"
                      "• Communication\n"
                      "• Microsoft Office",
                    ),

                    const SizedBox(height: 20),
                    SectionTitle("Languages"),
                    SectionText(
                      "Khmer\nEnglish\nFrench (Basic)",
                    ),
                  ],
                ),
              ),

              // ================= RIGHT PANEL =================
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SectionHeader("About Me"),
                        Text(
                          "I am a helpful, punctual, and friendly person. "
                          "I work well in a team as well as independently. "
                          "I am organized, goal-oriented, and always plan ahead "
                          "to manage my time effectively.",
                          style: TextStyle(fontSize: 13),
                        ),

                        SizedBox(height: 25),
                        SectionHeader("Experience"),

                        ExperienceItem(
                          "Internship – Cambodia Electrical Private Ltd (CEP)",
                          "Internship at Cambodia Electrical Private Ltd.",
                        ),
                        ExperienceItem(
                          "Volunteer – Aeon Asia Youth Leaders",
                          "Participated in environmental and social contribution activities.",
                        ),
                        ExperienceItem(
                          "Model Teen PSIS Campus",
                          "Volunteered in organizing community work and study tours at Angkor Ban Secondary School.",
                        ),
                        ExperienceItem(
                          "Directorate General of Youth, MoEYS",
                          "Volunteer for community development programs.",
                        ),
                        ExperienceItem(
                          "Cambodia Red Cross",
                          "• Participated in social events\n"
                          "• Traffic facilitator\n"
                          "• Road construction activities",
                        ),

                        SizedBox(height: 25),
                        SectionHeader("Education"),

                        EducationItem(
                          "2022 – Present",
                          "Institute of Technology of Cambodia",
                          "Bachelor of Engineering in Telecommunications and Network",
                        ),
                        EducationItem(
                          "2019 – 2022",
                          "Hun Shen Sereypheap High School",
                          "Khmer General Knowledge",
                        ),

                        SizedBox(height: 25),
                        SectionHeader("Professional Development"),
                        Text(
                          "2022 – 2023: Studied French (Part-time), Club de Langue\n"
                          "2022 – 2024: Studied English General Knowledge, PSIS",
                          style: TextStyle(fontSize: 13),
                        ),

                        SizedBox(height: 25),
                        SectionHeader("References"),

                        Text(
                          "Dr. Sreng Sokhenda\n"
                          "Head of Department of Telecommunication and Network Engineering\n"
                          "Institute of Technology of Cambodia\n"
                          "+855 12 407 910\n"
                          "sokhenda@itc.edu.kh",
                          style: TextStyle(fontSize: 13),
                        ),

                        SizedBox(height: 10),
                        Text(
                          "Dr. Thourn Kosorl\n"
                          "Lecturer\n"
                          "kosorl@itc.edu.kh",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ================= REUSABLE WIDGETS =================
  static Widget SectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );
  }

  static Widget SectionText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white70, fontSize: 12),
      textAlign: TextAlign.center,
    );
  }
}

// ---------- RIGHT PANEL HELPERS ----------
class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String title;
  final String description;

  const ExperienceItem(this.title, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          Text(description, style: const TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String year;
  final String school;
  final String detail;

  const EducationItem(this.year, this.school, this.detail, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(year, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(school, style: const TextStyle(fontSize: 14)),
          Text(detail, style: const TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}

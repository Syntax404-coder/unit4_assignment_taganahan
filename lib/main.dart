import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF6A9C89), // Background color of whole app
        appBar: AppBar(
          title: Text(
            'DOMENIC TAGANAHAN - MY BIOGRAPHY', // Header title
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold, // Bolded text
            ),
          ),
          backgroundColor: const Color(0xFF227B94), // Header background color
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile section with Row
              Container(
                color: const Color.fromARGB(255, 233, 229, 229), // Profile section background
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/Carbo.jpg',
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Domenic Rubia Taganahan', 
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Information Table for the 3 componets
              Container(
                color: const Color.fromARGB(255, 233, 229, 229), // Background color for the table section
                child: Table(
                  children: [
                    infoRow(Icons.email, 'Email', 'domenictaganahan@gmail.com'),
                    infoRow(Icons.phone, 'Phone', '969 616 4837'),
                    infoRow(Icons.location_on, 'Location', 'Gabu-an, Roxas City, Capiz'),
                    infoRow(Icons.school, 'Education', 'West Visayas State University - BS Computer Science'),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Biography Section
              Container(
                color: const Color.fromARGB(255, 233, 229, 229), // Background for biography section
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Biography',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hi, I’m Domenic Taganahan, born on 28th of May in the year 2003, in Roxas City. As a kid I lived for movies. While others played with toys, I got lost in film scenes, memorizing dialogue and marveling at shadows and soundtracks. Spielberg and Scorsese were like mentors, and cinema shaped my imagination and dreams.'
                      'I attended Capiz National High School,In junior high my program was technology aligned then in my senior years I took STEM.'
                      'Now, I’m pursuing computer science at West Visayas State University, I was driven by my passion for technology at a young age and its potential impact on the future. I’m excited to combine my artistic background with my technical studies to innovate and solve problems.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Container(
                color: const Color.fromARGB(255, 233, 229, 229), // Background color for the hobbies section
                padding: const EdgeInsets.all(12.0),
                height: 250, // Increased height for vertical layout
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'My Hobbies',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Increased font size
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.7, // Aspect ratio for verticality
                        children: [
                          hobbyColumn('assets/travel.jpg', 'Though I picked essentially sedentary-esque major, I do enjoy travelling alot.'), 
                          hobbyColumn('assets/cinema.jpg', 'Watching Movies', 'I enjoy watching movies, My favorite director is Vincent Gallo.'), 
                          hobbyColumn('assets/music.jpg', 'Listening to Music', 'Listening to music helps me relax and unwind especially late at night after classes are over and my work is finished.'), 
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
  // Function for creating a row in the table
  TableRow infoRow(IconData icon, String label, String data) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0), // Reduced horizontal padding
        child: Icon(icon, color: Colors.teal, size: 24), // Adjust icon size if needed
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0), // Reduced horizontal padding
        child: Text(label, style: TextStyle(fontSize: 16)), // Adjust font size if needed
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0), // Reduced horizontal padding
        child: Text(data, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), // Adjust font size if needed
      ),
    ],
  );
}

  Widget hobbyColumn(String imagePath, String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: 80, 
            height: 80,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Increase font size for title if needed
        ),
        SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14), // 
        ),
      ],
    );
  }
}

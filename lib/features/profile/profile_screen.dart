import 'package:flutter/material.dart';
import 'package:services/features/auth/view/login.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Hi Guest!",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 8),
            const Text("Sign in to unlock the full experience"),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: const Text("Sign In"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400,
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(40),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue.shade50,
              ),
              child: ListTile(
                title: const Text("List your Business for"),
                trailing: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child:
                      const Text("Free", style: TextStyle(color: Colors.white)),
                ),
                onTap: () {},
              ),
            ),
            const Divider(height: 32),
            ListTile(
              leading: const Icon(Icons.campaign),
              title: const Text("Advertise & Grow your Business"),
              onTap: () {},
            ),
            const SizedBox(height: 20),
            const Text("App and User Setting",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            const SizedBox(height: 12),

            // Language Selector
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _languageChip("English", selected: true),
                  _languageChip("हिंदी"),
                  _languageChip("தமிழ்"),
                  _languageChip("ಕನ್ನಡ"),
                  _languageChip("मराठी"),
                ],
              ),
            ),
            const SizedBox(height: 12),

            _simpleTile(Icons.settings, "Settings"),
            _simpleTile(Icons.feedback_outlined, "App Feedback"),
            _simpleTile(Icons.share_outlined, "Share App"),
            _simpleTile(Icons.headset_mic_outlined, "Customer Support"),
            const SizedBox(height: 20),

            const Text("More Information",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            const SizedBox(height: 12),

            _simpleTile(Icons.privacy_tip_outlined, "Privacy Policy"),
            _simpleTile(Icons.description_outlined, "Terms of Use"),
            _simpleTile(Icons.business_center_outlined, "Investor Relations"),
            _simpleTile(Icons.new_releases_outlined, "What's New"),
            _simpleTile(Icons.info_outline, "About Us"),
            const SizedBox(height: 12),

            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text("Login"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _simpleTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }

  Widget _languageChip(String label, {bool selected = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: selected,
        selectedColor: Colors.green.shade200,
        onSelected: (_) {},
      ),
    );
  }
}

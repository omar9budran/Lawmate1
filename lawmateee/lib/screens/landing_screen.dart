import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace 'assets/handshake.jpg' with your actual background image
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/ab11/6888/41955312f5ac7f000fd06b28bcb683ea?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=QQgJ-BIxLCi3y24sJ8eVj0ZDuDa8sG1YHJ~WrL5egQ13OpcrUB-PsQB~m1C4PO8icL4g~OVOuwxP1wpMMaG~Rf9T3MzvvtSxAcsERHA1LYeX0hgM6k0OPeR5bRPNkq~PbhRrTVn0yN7jPH-fqIKWm~o7XYQi0J4aW4vt~zp6DnvHktQBlxKmckONh3X2x5vQuVtJxWT8OD0~wkY6fcuTleU1flfNIQX0p9h5BS9pVB2fm9RT5To3LfBMPon-BHa7xGzqUvcq-ipH1VtqQAn7ov82j7K5hfjjmuKcLf3fILrSTfx5YHzle8CTty7rF~20EhsppeOG7UQgTpfUUaeUsA__',
              fit: BoxFit.cover,
            ),
          ),
          // Semi-transparent overlay to darken background slightly
          Container(
            color: Colors.black.withAlpha((0.3 * 255).toInt()),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  // Logo or Title
                  Text(
                    'LawMate',
                    style: TextStyle(
                      color: Colors.white.withAlpha((0.9 * 255).toInt()),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Sign Up button
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Sign In or Sign Up screen
                      Navigator.pushNamed(context, '/signin');
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Colors.white.withAlpha((0.9 * 255).toInt()),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Sign Up'),
                  ),
                  const SizedBox(height: 20),

                  // Sign In button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Sign In'),
                  ),
                  const Spacer(),
                  // Version
                  Text(
                    'Version 0.0.1',
                    style: TextStyle(
                      color: Colors.white.withAlpha((0.7 * 255).toInt()),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

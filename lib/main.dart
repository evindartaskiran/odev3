import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Passing Data',
      home:HomeScreen(),
  ),
  );
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter odev3'),
      ),
      body: const Center(
        child: SelectionButton(),
      ),
    );
  }
}
class SelectionButton extends StatelessWidget {
  const SelectionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: const Text('Dil seçenekleri için tıklayınız'),
    );
  }

  void _navigateAndDisplaySelection(BuildContext context) async {

    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SelectionScreen()),
    );
  }
}
class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seçenekler'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Close the screen and return "Yep!" as the result.
                  Navigator.pop(context, 'Türkçe');
                },
                child: const Text('Türkçe'),
              )
              ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'İngilizce');
                },

                child: const Text('İngilizce'),
              )
              ),
          ],
        ),
      ),
    );
  }
}

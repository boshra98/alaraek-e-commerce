import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';

class Home  extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("عنوان الصفحة"),
        centerTitle: true,
        actions: const [
          Icon(Icons.notifications), // أيقونة في يمين الـ AppBar
        ],
      ),
      // ✅ جسم الصفحة (صورة + نص)
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // BalloonSliderDemo() ,
          BalloonSlider(
              value: 0.5,
              ropeLength: 55,
              showRope: true,
              onChangeStart: (val) {},
              onChanged: (val) {},
              onChangeEnd: (val) {},
              color: Colors.indigo
          ),

          Image.asset(
            "assets/images/1.png", // ضع مسار الصورة هنا
            height: 200,
          ),
          const SizedBox(height: 20),
          const Text(
            "مرحبا بكم في  برنامجنا",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),

      // ✅ BottomAppBar مع عدة أيقونات
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(), // شكل يترك مكان للـ FAB إذا احتجت
        notchMargin: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.home), onPressed: () {}),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.person), onPressed: () {}),
            IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
          ],
        ),
      ),

      // (اختياري) زر عائم في الوسط
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class BalloonSliderDemo extends StatelessWidget {
  ValueNotifier<double> _slider1Value = ValueNotifier<double>(0.0);
  ValueNotifier<double> _slider2Value = ValueNotifier<double>(0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("BALLOON SLIDER",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildBalloonSlider(
                showRope: true, color: Colors.blue, sliderValue: _slider1Value),
            _buildBalloonSlider(
                showRope: false,
                color: Colors.blue,
                sliderValue: _slider2Value),
          ],
        ),
      ),
    );
  }

  Widget _buildBalloonSlider(
      {required ValueNotifier<double> sliderValue, required Color color, required bool showRope}) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 240,
          height: 60,
          child: BalloonSlider(
            value: sliderValue.value,
            ropeLength: 55,
            showRope: showRope,
            onChanged: (val) => sliderValue.value = val,
            color: color,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: ValueListenableBuilder<double>(
            valueListenable: sliderValue,
            builder: (context, value, child) {
              int progress = (value * 100).round();
              return Text(
                "$progress",
                style: TextStyle(fontWeight: FontWeight.bold, color: color),
              );
            },
          ),
        )
      ],
    );
  }
}
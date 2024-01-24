import 'package:flutter/material.dart';
import 'package:flutter_app_3/presentation/views/effectActivite/fiveAct/actividad_5.dart';
import 'package:go_router/go_router.dart';

class Actividad5Effects extends StatelessWidget {
  const Actividad5Effects({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.go('/');
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            'Shimmer loading effects',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: const ExampleUiLoadingAnimation(),
      ),
    );
  }
}

const _shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFEBEBF4),
    Color(0xFFF4F4F4),
    Color(0xFFEBEBF4),
  ],
  stops: [0.1, 0.3, 0.4],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);

class ExampleUiLoadingAnimation extends StatefulWidget {
  const ExampleUiLoadingAnimation({super.key});

  @override
  State<ExampleUiLoadingAnimation> createState() =>
      _ExampleUiLoadingAnimationState();
}

class _ExampleUiLoadingAnimationState extends State<ExampleUiLoadingAnimation> {
  bool _isLoanding = true;

  void _toggleLoading() {
    setState(() {
      _isLoanding = !_isLoanding;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shimmer(
        linearGradient: _shimmerGradient,
        child: ListView(
          physics: _isLoanding ? const NeverScrollableScrollPhysics() : null,
          children: [
            const SizedBox(
              height: 16,
            ),
            _buildTopRowList(),
            const SizedBox(
              height: 16,
            ),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleLoading,
        child:
            Icon(_isLoanding ? Icons.hourglass_full : Icons.hourglass_bottom),
      ),
    );
  }

  Widget _buildTopRowList() {
    return SizedBox(
      height: 72,
      child: ListView(
        physics: _isLoanding ? const NeverScrollableScrollPhysics() : null,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          const SizedBox(width: 16),
          _buildTopRowItem(),
          _buildTopRowItem(),
          _buildTopRowItem(),
          _buildTopRowItem(),
          _buildTopRowItem(),
          _buildTopRowItem(),
        ],
      ),
    );
  }

  Widget _buildTopRowItem() {
    return ShimmerLoanding(
      isLoanding: _isLoanding,
      child: const CircleListItem(),
    );
  }

  Widget _buildListItem() {
    return ShimmerLoanding(
      isLoanding: _isLoanding,
      child: CardListItem(isLoading: _isLoanding),
    );
  }
}

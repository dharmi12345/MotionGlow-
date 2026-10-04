import 'package:flutter/material.dart';
import '../../../core/theame/app_colores.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //------------------------------------------------
          Row(
            children: const [
              Icon(Icons.wb_sunny_outlined, color: Colors.orange),

              SizedBox(width: 10),

              Text(
                "Today's Weather",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),

          const SizedBox(height: 30),

          //------------------------------------------------
          Row(
            children: [
              Container(
                height: 72,
                width: 72,

                decoration: BoxDecoration(
                  color: Colors.orange.withValues(alpha: .08),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Icon(
                  Icons.wb_sunny_rounded,
                  color: Colors.orange,
                  size: 40,
                ),
              ),

              const SizedBox(width: 18),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "24°C",
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 6),

                  Text(
                    "Sunny",
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 30),

          //------------------------------------------------
          Row(
            children: const [
              Expanded(
                child: _WeatherInfo(
                  icon: Icons.water_drop_outlined,
                  value: "62%",
                  title: "Humidity",
                  color: Colors.blue,
                ),
              ),

              SizedBox(width: 16),

              Expanded(
                child: _WeatherInfo(
                  icon: Icons.air,
                  value: "8 km/h",
                  title: "Wind",
                  color: Colors.teal,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            children: const [
              Expanded(
                child: _WeatherInfo(
                  icon: Icons.wb_iridescent_outlined,
                  value: "4",
                  title: "UV Index",
                  color: Colors.orange,
                ),
              ),

              SizedBox(width: 16),

              Expanded(
                child: _WeatherInfo(
                  icon: Icons.visibility_outlined,
                  value: "10 km",
                  title: "Visibility",
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _WeatherInfo extends StatelessWidget {
  final IconData icon;
  final String value;
  final String title;
  final Color color;

  const _WeatherInfo({
    required this.icon,
    required this.value,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color(0xffF7F8FA),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [
          Icon(icon, color: color),

          const SizedBox(height: 12),

          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),

          const SizedBox(height: 4),

          Text(title, style: const TextStyle(color: AppColors.textSecondary)),
        ],
      ),
    );
  }
}

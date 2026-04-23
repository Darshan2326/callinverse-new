import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calliverse/app/core/constants/app_colors.dart';

class PulseFAB extends StatefulWidget {
  final VoidCallback onPressed;

  const PulseFAB({required this.onPressed});

  @override
  State<PulseFAB> createState() => _PulseFABState();
}

class _PulseFABState extends State<PulseFAB>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _pulseAnim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(
      begin: 0.85,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _pulseAnim,
      builder: (_, __) {
        return Stack(
          alignment: Alignment.center,
          children: [
            // Outer pulse ring
            Transform.scale(
              scale: _pulseAnim.value * 1.5,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary.withOpacity(
                    (1 - _pulseAnim.value) * 0.35,
                  ),
                ),
              ),
            ),
            // FAB itself
            GestureDetector(
              onTap: () {
                HapticFeedback.mediumImpact();
                widget.onPressed();
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF1E7AFF),
                      AppColors.primary,
                      const Color(0xFF0340A8),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.55),
                      blurRadius: 20,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.add_rounded,
                  color: AppColors.plainwhite,
                  size: 28,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

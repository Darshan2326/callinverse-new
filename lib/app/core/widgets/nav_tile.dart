import 'package:flutter/material.dart';
import 'package:calliverse/app/core/constants/app_colors.dart';
import 'glass_nav_bar.dart';

class NavTile extends StatefulWidget {
  final NavItemData item;
  final bool isSelected;
  final VoidCallback onTap;

  const NavTile({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<NavTile> createState() => _NavTileState();
}

class _NavTileState extends State<NavTile> with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _scaleAnim;
  late Animation<double> _glowAnim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnim = Tween<double>(
      begin: 1.0,
      end: 1.15,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.elasticOut));
    _glowAnim = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
    if (widget.isSelected) _ctrl.forward();
  }

  @override
  void didUpdateWidget(NavTile old) {
    super.didUpdateWidget(old);
    if (widget.isSelected && !old.isSelected) {
      _ctrl.forward(from: 0);
    } else if (!widget.isSelected && old.isSelected) {
      _ctrl.reverse();
    }
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedBuilder(
        animation: _ctrl,
        builder: (context, _) {
          return SizedBox(
            width: 64,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: _scaleAnim.value,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Glow halo
                      if (widget.isSelected)
                        Opacity(
                          opacity: _glowAnim.value * 0.6,
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primary,
                                  blurRadius: 18,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      // Pill background
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeOut,
                        width: widget.isSelected ? 44 : 36,
                        height: widget.isSelected ? 36 : 36,
                        decoration: BoxDecoration(
                          color: widget.isSelected
                              ? AppColors.primary.withOpacity(0.2)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(14),
                          border: widget.isSelected
                              ? Border.all(
                                  color: AppColors.primary.withOpacity(0.5),
                                  width: 1,
                                )
                              : null,
                        ),
                        child: Icon(
                          widget.isSelected
                              ? widget.item.icon
                              : widget.item.outlineIcon,
                          color: widget.isSelected
                              ? AppColors.plainwhite
                              : AppColors.plainwhite.withOpacity(0.4),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 200),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: widget.isSelected
                        ? FontWeight.w700
                        : FontWeight.w400,
                    color: widget.isSelected
                        ? AppColors.plainwhite
                        : AppColors.plainwhite.withOpacity(0.4),
                    letterSpacing: widget.isSelected ? 0.4 : 0,
                  ),
                  child: Text(widget.item.label),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

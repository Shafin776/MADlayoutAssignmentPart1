import 'package:assignment_part_one/data/data.dart';
import 'package:flutter/material.dart';

class HomeTile extends StatefulWidget {
  const HomeTile({Key? key, required this.device}) : super(key: key);

  final IOT device;

  @override
  State<HomeTile> createState() => _HomeTileState();
}

class _HomeTileState extends State<HomeTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                widget.device.isActive ? 'assets/switch-on.png' :  widget.device.imageUrl,
                  height: 60,
                ),
                Container(
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() {
                        widget.device.isActive = !widget.device.isActive;
                      });
                    },
                    icon: Icon(
                      Icons.power_settings_new_rounded,
                      size: 24,
                      color: widget.device.isActive ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              widget.device.title,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.fiber_manual_record,
                  size: 8,
                  color: widget.device.isActive ? Colors.blue : Colors.grey,
                ),
                const SizedBox(width: 8),
                Text(
                  widget.device.isActive ? 'ON' : 'OFF',
                  style: TextStyle(
                    color: widget.device.isActive ? Colors.blue : Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

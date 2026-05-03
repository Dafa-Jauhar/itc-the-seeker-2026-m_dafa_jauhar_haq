import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; 
class FavoriteButton extends StatefulWidget {
  final String idPengurus; 

  const FavoriteButton({super.key, required this.idPengurus});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadFavoriteStatus();  
  }

  Future<void> _loadFavoriteStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite = prefs.getBool('fav_${widget.idPengurus}') ?? false;
    });
  }

  Future<void> _toggleFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite = !isFavorite;
    });
    await prefs.setBool('fav_${widget.idPengurus}', isFavorite);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
      ),
      color: isFavorite ? Colors.red : Colors.grey,
      iconSize: 32,
      onPressed: _toggleFavorite, 
    );
  }
}
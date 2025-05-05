import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? newCustomFunction() {
  String getRandomTip(List<String> tips) {
    final random = math.Random();
    if (tips.isEmpty) return '';
    return tips[random.nextInt(tips.length)];
  }
}

String? getRandomtip(List<String> tips) {
  final random = math.Random();
  if (tips.isEmpty) return '';
  return tips[random.nextInt(tips.length)];
}

String? getRecylingTip() {
  final tips = [
    'Rinse containers before recycling to avoid contamination.',
    'Flatten cardboard boxes to save space.',
    'Don’t recycle plastic bags — take them to a store drop-off instead.',
    'Keep recyclables loose — don’t bag them.',
    'Check local guidelines — recycling rules vary by area.',
    'Recycle batteries at designated drop-off points, not in the bin.',
    'Remove food residue from takeout containers.',
    'Glass is infinitely recyclable — don’t toss it in the trash!',
    'Avoid “wish-cycling” — when in doubt, leave it out.',
    'Compost food waste instead of putting it in recycling.'
  ];

  final random = math.Random();
  return tips[random.nextInt(tips.length)];
}

String getRankColor(int index) {
  if (index == 0) return '0xFFFFD700'; // Gold
  if (index == 1) return '0xFFC0C0C0'; // Silver
  if (index == 2) return '0xFFCD7F32'; // Bronze
  return '0xFFFFFFFF'; // Default White
}

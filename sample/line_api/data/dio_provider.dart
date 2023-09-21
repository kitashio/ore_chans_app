import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Dioを提供するProvider
final dioProvider = Provider<Dio>((ref) => Dio());
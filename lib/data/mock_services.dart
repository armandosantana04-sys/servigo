import '../models/service_model.dart';

List<ServiceModel> mockServices = [
  ServiceModel(
    title: 'Reparación de tuberías',
    category: 'Plomería',
    description: 'Servicio profesional para fugas, tuberías y mantenimiento.',
    price: '\$350',
    rating: 4.8,
    imagePath: 'assets/images/plumbing.jpg',
    businessName: 'Martínez Plomería',
    location: 'Ciudad Hidalgo, Michoacán',
    available: true,
  ),

  ServiceModel(
    title: 'Limpieza de hogar',
    category: 'Limpieza',
    description: 'Limpieza completa para hogares, oficinas y negocios.',
    price: '\$500',
    rating: 4.6,
    imagePath: 'assets/images/cleaning.jpg',
    businessName: 'CleanPro Servicios',
    location: 'Ciudad Hidalgo, Michoacán',
    available: true,
  ),

  ServiceModel(
    title: 'Reparación de computadoras',
    category: 'Computación',
    description: 'Formateo, mantenimiento y reparación de equipos.',
    price: '\$450',
    rating: 4.9,
    imagePath: 'assets/images/computer.jpg',
    businessName: 'TechFix Reparaciones',
    location: 'Ciudad Hidalgo, Michoacán',
    available: true,
  ),
];

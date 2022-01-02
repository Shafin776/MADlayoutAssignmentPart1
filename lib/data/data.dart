class IOT {
  final String title;
  final String imageUrl;
  bool isActive;

  IOT({
    required this.title,
    required this.imageUrl,
    required this.isActive,
  });
}

final List<IOT> devices = [
  IOT(
    title: 'PlugAmmar',
    imageUrl: 'assets/switch-off.png',
    isActive: false,
  ),
  IOT(
    title: 'Bilik Hana',
    imageUrl: 'assets/switch-off.png',
    isActive: false,
  ),
  IOT(
    title: 'Gate Light Switch',
    imageUrl: 'assets/switch-off.png',
    isActive: false,
  ),
  IOT(
    title: 'Plug 3 patio',
    imageUrl: 'assets/switch-off.png',
    isActive: false,
  ),
  IOT(
    title: 'Parking Lights',
    imageUrl: 'assets/switch-off.png',
    isActive: false,
  ),
  IOT(
    title: 'Bridge',
    imageUrl: 'assets/switch-off.png',
    isActive: false,
  ),
];

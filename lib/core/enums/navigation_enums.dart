enum NavigationEnums {
  dashboard('dashboard'),
  onboard('onboard'),
  login('login');

  final String value;
  const NavigationEnums(this.value);

  String get toPath => '/$value';
}

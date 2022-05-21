class OnBoardingController {
  List images = [
    'on_boarding1.jpg',
    'on_boarding2.jpg',
    'on_boarding3.jpg'
  ];
  List label = ["Find Food You Love", "Fast Delivery", "Live Tracking"];
  List hint = [
    "Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep",
    "Fast food delivery to your home, office wherever you are",
    "Real time tracking of your food on the app once you placed the order"
  ];
  var currentIndex = 0;
  changeController(value)
  {
    currentIndex = value;
  }
}

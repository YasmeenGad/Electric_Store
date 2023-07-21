class Product {
  var id, price;
  var title, subtitle, description, image;
  Product(
      {this.id,
      this.price,
      this.title,
      this.subtitle,
      this.description,
      this.image});
}

List<Product> products = [
  Product(
    id: 1,
    price: 300,
    title: "Airpods",
    subtitle: "Great sound quality",
    image: "images/airpod.png",
    description:
        "Apple AirPods are wireless Bluetooth earbuds designed specifically to work with your iPhone and iPad.",
  ),
  Product(
    id: 2,
    price: 4099,
    title: "Mobile Device",
    subtitle: "Great Mobile",
    image: "images/mobile.png",
    description:
        "A mobile device is a small hand-held device that has a display screen with touch input and/or a QWERTY keyboard and may provide users with telephony capabilities.",
  ),
  Product(
      id: 3,
      price: 530,
      title: "3D glasses",
      subtitle: "To move the virtual world",
      image: "images/class.png",
      description:
          "The 3-D glasses have polarizing filters matching to the projectors' filters."),
  Product(
    id: 4,
    price: 730,
    title: "headphones",
    subtitle: "For long hours of listening",
    image: "images/headset.png",
    description:
        "Headphones are a pair of padded speakers which you wear over your ears in order to listen to a radio or recorded music, ",
  ),
  Product(
    id: 5,
    price: 680,
    title: "Sound Recorder",
    subtitle: "Record important moments",
    image: "images/speaker.png",
    description:
        "A voice recorder is essentially a digital device that records sound, saves it in file format, ",
  ),
  Product(
    id: 6,
    price: 399,
    title: "Camera",
    subtitle: "Quality, accuracy, and high image",
    image: "images/camera.png",
    description:
        "A camera is an optical instrument that captures images. Most cameras can capture 2D images, ",
  ),
];

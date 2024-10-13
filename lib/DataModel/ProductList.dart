class Product {
  final String name;
  final double price;
  final String image;
  final String description;
  final double discount;

  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    this.discount = 0.0,
  });
}

final List<Product> products = [
  Product(
    name: 'Pressure Cooker - Stainless Steel',
    price: 0.00,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg',
    description:
        'Vinod stainless steel cookers are known for their durability and efficiency. Ideal for all your cooking needs.',
    discount: 0.0,
  ),
  Product(
    name: 'White Pomfret Fish',
    price: 15.99,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg',
    description:
        'Fresh White Pomfret Fish. Perfect for a healthy meal packed with nutrients.',
    discount: 10.0,
  ),
  Product(
    name: 'Fafda',
    price: 9.99,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg',
    description:
        'Crispy and delicious Fafda, a traditional snack that goes perfectly with tea.',
    discount: 5.0,
  ),
  Product(
    name: 'Masala Maggi',
    price: 1.49,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg',
    description:
        'Instant noodles with a burst of spice. Quick and easy to make, loved by all ages.',
    discount: 0.0,
  ),
  Product(
    name: 'Rajdhani Besan',
    price: 2.99,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg',
    description:
        'High-quality gram flour, ideal for making snacks and sweets like pakoras and ladoos.',
    discount: 15.0,
  ),
  Product(
    name: 'Aashirvaad Atta',
    price: 5.99,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg',
    description:
        'Premium wheat flour, perfect for making soft and fluffy rotis. Fortified with essential nutrients.',
    discount: 0.0,
  ),
  Product(
    name: 'Amul Butter',
    price: 3.99,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg',
    description:
        'Creamy and delicious Amul butter, a favorite spread for bread and parathas.',
    discount: 20.0,
  ),
  Product(
    name: 'Tata Salt',
    price: 0.99,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg',
    description:
        'Iodized salt for a healthy and balanced diet. Perfect for everyday cooking.',
    discount: 0.0,
  ),
  Product(
    name: 'Parle-G Biscuits',
    price: 0.50,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpgg',
    description:
        'Classic biscuits that everyone loves. Great with tea or as a quick snack.',
    discount: 0.0,
  ),
  Product(
    name: 'Bru Coffee',
    price: 4.99,
    image:
        'https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg',
    description:
        'Instant coffee that packs a punch. Perfect for your morning boost or evening break.',
    discount: 0.0,
  ),
];

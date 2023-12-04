import 'dart:math';

class JokeProvider {
  static final List<String> _jokes = [
    "Why don't scientists trust atoms? Because they make up everything.",
    "I told my wife she should embrace her mistakes. She gave me a hug.",
    "Why don't some couples go to the gym? Because some relationships don't work out!",
    "I'm reading a book on anti-gravity. It's impossible to put down!",
    "What do you call fake spaghetti? An impasta!",
    "How do you organize a space party? You planet.",
    "What do you call an alligator in a vest? An investigator!",
    "Why don't eggs tell jokes? They might crack up.",
    "What's orange and sounds like a parrot? A carrot!",
    "Why couldn't the bicycle stand up by itself? It was two-tired.",
    "I would tell you a construction joke, but I'm still working on it.",
    "Why did the scarecrow win an award? Because he was outstanding in his field!",
    "Parallel lines have so much in common. It’s a shame they’ll never meet.",
    "Why did the coffee file a police report? It got mugged.",
    "I'm on a whiskey diet. I've lost three days already.",
    "A termite walks into a bar and asks, 'Is the bar tender here?'",
    "I would tell a joke about pizza, but it's too cheesy.",
    "What did the fish say when it hit the wall? Dam!",
    "Why don't skeletons fight each other? They don't have the guts.",
    "What's brown and sticky? A stick.",
    "I'm no photographer, but I can picture us together.",
    "What do you call a belt made out of watches? A waist of time.",
    "Why was the belt arrested? For holding up a pair of pants!",
    "What do you call a snowman with a six-pack? An abdominal snowman.",
    "I'd tell you a chemistry joke but I know I wouldn't get a reaction.",
    "Why do cows have hooves instead of feet? Because they lactose.",
    "Why don't oysters donate to charity? Because they are shellfish.",
    "What do you call a factory that makes good products? A satisfactory.",
    "I used to play piano by ear, but now I use my hands.",
    "Why did the golfer bring two pairs of pants? In case he got a hole in one.",
    "What do you call a fake noodle? An impasta!",
    "I would tell you a UDP joke, but you might not get it.",
    "What did one wall say to the other? I'll meet you at the corner.",
    "I told my computer I needed a break, and now it won't stop sending me Kit-Kats.",
    "Why was the math book sad? Because it had too many problems.",
    "Did you hear about the mathematician who’s afraid of negative numbers? He’ll stop at nothing to avoid them.",
    "Why don’t skeletons fight each other? They don’t have the guts.",
    "I told a time-travel joke, but you didn't like it.",
    "What do you call cheese that isn't yours? Nacho cheese.",
    "Why don't some people play hide and seek with me? Because good luck hiding when I'm not counting.",
    "Why don’t scientists trust atoms? Because they make up everything.",
    "I have a joke about time travel, but you didn't like it last time.",
    "Why do we tell actors to 'break a leg?' Because every play has a cast.",
    "Hear about the new restaurant called Karma? There’s no menu: You get what you deserve.",
    "Why don’t eggs tell jokes? They’d crack each other up.",
    "I'd tell you a Fibonacci joke, but it's probably as bad as the last two you've heard combined.",
    "What do you call a dog that can do magic? A labracadabrador.",
    "Why don't scientists trust atoms? They make up everything.",
    "What do you get when you cross a snowman and a vampire? Frostbite."
  ];

  static String getRandomJoke() {
    final randomIndex = Random().nextInt(_jokes.length);
    return _jokes[randomIndex];
  }
}

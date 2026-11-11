import 'package:flutter/material.dart';

void main() => runApp(const CineFindApp());

class Movie {
  final String title, genre, year, rating, overview, emoji, color;
  const Movie(this.title, this.genre, this.year, this.rating, this.overview,
      this.emoji, this.color);
}

const movies = <Movie>[
  Movie('Dune: Part Two', 'Sci-Fi', '2024', '8.5', 'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.', '🏜️', '8B6848'),
  Movie('The Dark Knight', 'Action', '2008', '9.0', 'Batman faces the Joker, a criminal mastermind who plunges Gotham City into chaos.', '🦇', '26364B'),
  Movie('Interstellar', 'Sci-Fi', '2014', '8.7', 'A team of explorers travels beyond this galaxy to discover whether mankind has a future among the stars.', '🚀', '263B55'),
  Movie('Parasite', 'Thriller', '2019', '8.5', 'Greed and class discrimination threaten the newly formed relationship between a wealthy family and a poorer one.', '🏠', '49634F'),
  Movie('The Grand Budapest Hotel', 'Comedy', '2014', '8.1', 'A legendary concierge and his trusted lobby boy become involved in the theft of a priceless painting.', '🏨', 'B66F8B'),
  Movie('Get Out', 'Horror', '2017', '7.8', 'A young man visits his girlfriend’s family estate and uncovers a disturbing secret.', '🌲', '405A4B'),
  Movie('La La Land', 'Romance', '2016', '8.0', 'A jazz musician and an aspiring actress fall in love while pursuing their dreams in Los Angeles.', '🎹', '8C5B79'),
  Movie('Mad Max: Fury Road', 'Action', '2015', '8.1', 'In a post-apocalyptic wasteland, a woman rebels against a tyrant with the help of a drifter.', '🚗', 'A65E37'),
  Movie('Coco', 'Animation', '2017', '8.4', 'A young musician enters the Land of the Dead to discover his family history.', '🎸', 'B56B35'),
  Movie('Whiplash', 'Drama', '2014', '8.5', 'A promising drummer enrolls at a music conservatory where his demanding instructor pushes him to the limit.', '🥁', '9B7049'),
  Movie('Spider-Man: Into the Spider-Verse', 'Animation', '2018', '8.4', 'Teenager Miles Morales becomes Spider-Man and meets heroes from other dimensions.', '🕷️', '4D5F9B'),
  Movie('Knives Out', 'Mystery', '2019', '7.9', 'A detective investigates the death of a wealthy crime novelist surrounded by eccentric relatives.', '🔎', '7D7652'),
  Movie('Everything Everywhere All at Once', 'Sci-Fi', '2022', '7.8', 'An exhausted laundromat owner is swept into an adventure across the multiverse.', '🌌', '66518C'),
  Movie('The Conjuring', 'Horror', '2013', '7.5', 'Paranormal investigators help a family terrorized by a dark presence in their farmhouse.', '👻', '4B5360'),
  Movie('The Shawshank Redemption', 'Drama', '1994', '9.3', 'Two imprisoned men bond over years, finding solace and eventual redemption through acts of decency.', '🔒', '54715F'),
  Movie('Inception', 'Sci-Fi', '2010', '8.8', 'A skilled thief who steals secrets through dream-sharing technology is given a chance to have his record erased.', '🌀', '53647E'),
  Movie('Joker', 'Drama', '2019', '8.4', 'A troubled comedian descends into madness and becomes a symbol of chaos in Gotham.', '🤡', '9A594E'),
  Movie('The Hangover', 'Comedy', '2009', '7.7', 'Three friends wake up after a bachelor party in Las Vegas with no memory of the previous night.', '🍸', 'B18B50'),
  Movie('A Quiet Place', 'Horror', '2018', '7.5', 'A family must live in silence to avoid mysterious creatures that hunt by sound.', '🤫', '59634B'),
  Movie('Your Name', 'Romance', '2016', '8.4', 'Two teenagers share a profound connection after mysteriously swapping bodies.', '🌠', '657AA5'),
  Movie('John Wick', 'Action', '2014', '7.4', 'An ex-hitman comes out of retirement to track down the gangsters who took everything from him.', '🔫', '43516B'),
  Movie('The Social Network', 'Drama', '2010', '7.8', 'The story of the creation of a global social network and the lawsuits that followed.', '💻', '49647C'),
  Movie('Paddington 2', 'Comedy', '2017', '7.8', 'Paddington embarks on a series of odd jobs to buy the perfect present for his aunt.', '🐻', 'B47A48'),
  Movie('Shutter Island', 'Mystery', '2010', '8.2', 'A US Marshal investigates the disappearance of a patient from a hospital for the criminally insane.', '🌫️', '526477'),
  Movie('Blade Runner 2049', 'Sci-Fi', '2017', '8.0', 'A young blade runner uncovers a long-buried secret that could change society.', '🌃', '9A674F'),
  Movie('Titanic', 'Romance', '1997', '7.9', 'A young couple from different social classes fall in love aboard the ill-fated ship.', '🚢', '527C91'),
  Movie('The Exorcist', 'Horror', '1973', '8.1', 'A mother seeks help from two priests when her daughter exhibits disturbing behavior.', '🕯️', '69605A'),
  Movie('The Nice Guys', 'Comedy', '2016', '7.4', 'A private eye and a hired enforcer investigate a missing girl in 1970s Los Angeles.', '🕵️', '9A7956'),
  Movie('Gladiator', 'Action', '2000', '8.5', 'A betrayed Roman general fights his way through the arena to seek justice.', '⚔️', '9B6946'),
  Movie('Soul', 'Animation', '2020', '8.0', 'A musician gets a chance to discover what makes life meaningful.', '🎷', '536E91'),
];

const genres = ['All', 'Action', 'Comedy', 'Drama', 'Horror', 'Romance', 'Sci-Fi', 'Thriller', 'Mystery', 'Animation'];

class CineFindApp extends StatelessWidget {
  const CineFindApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'CineFind',
    theme: ThemeData(useMaterial3: true, brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF090D16),
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF9B8CFF), brightness: Brightness.dark),
      fontFamily: 'Roboto'),
    home: const HomePage(),
  );
}

class HomePage extends StatefulWidget { const HomePage({super.key}); @override State<HomePage> createState() => _HomePageState(); }
class _HomePageState extends State<HomePage> {
  final search = TextEditingController();
  String selectedGenre = 'All';
  bool favoritesOnly = false;
  final Set<String> favorites = {};
  @override
  void dispose() { search.dispose(); super.dispose(); }
  List<Movie> get filtered => movies.where((m) {
    final q = search.text.trim().toLowerCase();
    return (selectedGenre == 'All' || m.genre == selectedGenre) &&
      (q.isEmpty || m.title.toLowerCase().contains(q) || m.genre.toLowerCase().contains(q) || m.year.contains(q)) &&
      (!favoritesOnly || favorites.contains(m.title));
  }).toList();
  @override
  Widget build(BuildContext context) {
    final results = filtered;
    return Scaffold(
      body: SafeArea(child: CustomScrollView(slivers: [
        SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(20, 18, 20, 10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [Container(width: 42, height: 42, decoration: BoxDecoration(color: const Color(0xFF9B8CFF).withOpacity(.18), borderRadius: BorderRadius.circular(14)), child: const Icon(Icons.movie_filter_rounded, color: Color(0xFFB7ACFF))), const SizedBox(width: 12), const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('CINEFIND', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900, letterSpacing: 2)), Text('Find your next favourite', style: TextStyle(color: Colors.white54, fontSize: 12))]), const Spacer(), IconButton(onPressed: () => setState(() => favoritesOnly = !favoritesOnly), icon: Icon(favoritesOnly ? Icons.favorite : Icons.favorite_border, color: favoritesOnly ? Colors.pinkAccent : Colors.white70), tooltip: 'Favourites')]),
          const SizedBox(height: 25), const Text('Discover movies', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, letterSpacing: -.7)), const SizedBox(height: 6), const Text('Search, explore and save movies you love.', style: TextStyle(color: Colors.white54)),
          const SizedBox(height: 20), TextField(controller: search, onChanged: (_) => setState(() {}), decoration: InputDecoration(hintText: 'Search movies, genres or year...', prefixIcon: const Icon(Icons.search), suffixIcon: search.text.isNotEmpty ? IconButton(onPressed: () { search.clear(); setState(() {}); }, icon: const Icon(Icons.close)) : null, filled: true, fillColor: const Color(0xFF151C2B), border: OutlineInputBorder(borderRadius: BorderRadius.circular(17), borderSide: BorderSide.none), contentPadding: const EdgeInsets.symmetric(vertical: 17))),
          const SizedBox(height: 20), Row(children: [const Text('Genres', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), const Spacer(), Text('${results.length} movies', style: const TextStyle(color: Colors.white54, fontSize: 12))]), const SizedBox(height: 12),
          SizedBox(height: 39, child: ListView.separated(scrollDirection: Axis.horizontal, itemCount: genres.length, separatorBuilder: (_, __) => const SizedBox(width: 8), itemBuilder: (context, i) { final g = genres[i]; final active = selectedGenre == g; return ChoiceChip(label: Text(g), selected: active, onSelected: (_) => setState(() => selectedGenre = g), showCheckmark: false, backgroundColor: const Color(0xFF151C2B), selectedColor: const Color(0xFF7668D9), labelStyle: TextStyle(color: active ? Colors.white : Colors.white70, fontWeight: active ? FontWeight.w700 : FontWeight.w500), side: BorderSide.none, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))); })),
          const SizedBox(height: 22), Text(favoritesOnly ? 'Your watchlist' : 'Popular picks', style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800)), const SizedBox(height: 4),
        ]))),
        if (results.isEmpty) SliverFillRemaining(hasScrollBody: false, child: Center(child: Padding(padding: const EdgeInsets.all(30), child: Column(mainAxisSize: MainAxisSize.min, children: [const Icon(Icons.movie_outlined, size: 52, color: Colors.white30), const SizedBox(height: 12), const Text('No movies found', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), const SizedBox(height: 5), const Text('Try another title or genre.', style: TextStyle(color: Colors.white54))]))))
        else SliverPadding(padding: const EdgeInsets.fromLTRB(18, 8, 18, 28), sliver: SliverGrid(delegate: SliverChildBuilderDelegate((context, i) => MovieCard(movie: results[i], isFavorite: favorites.contains(results[i].title), onFavorite: () => setState(() { final t = results[i].title; favorites.contains(t) ? favorites.remove(t) : favorites.add(t); }), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(movie: results[i], isFavorite: favorites.contains(results[i].title), onFavorite: () => setState(() { final t = results[i].title; favorites.contains(t) ? favorites.remove(t) : favorites.add(t); }))))), childCount: results.length), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 13, mainAxisSpacing: 15, childAspectRatio: .66))),
      ])),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie; final bool isFavorite; final VoidCallback onFavorite, onTap;
  const MovieCard({super.key, required this.movie, required this.isFavorite, required this.onFavorite, required this.onTap});
  @override Widget build(BuildContext context) => InkWell(onTap: onTap, borderRadius: BorderRadius.circular(17), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Expanded(child: Stack(children: [Container(width: double.infinity, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(int.parse('0xFF${movie.color}')), const Color(0xFF151C2B)]), borderRadius: BorderRadius.circular(17)), child: Center(child: Text(movie.emoji, style: const TextStyle(fontSize: 66)))), Positioned(top: 9, right: 9, child: Container(decoration: BoxDecoration(color: Colors.black.withOpacity(.45), borderRadius: BorderRadius.circular(30)), child: IconButton(constraints: const BoxConstraints.tightFor(width: 36, height: 36), padding: EdgeInsets.zero, onPressed: onFavorite, icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border, size: 18, color: isFavorite ? Colors.pinkAccent : Colors.white)))) , Positioned(bottom: 9, left: 9, child: Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5), decoration: BoxDecoration(color: Colors.black.withOpacity(.55), borderRadius: BorderRadius.circular(8)), child: Row(children: [const Icon(Icons.star, size: 13, color: Color(0xFFFFD166)), const SizedBox(width: 3), Text(movie.rating, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12))])))])),
    const SizedBox(height: 9), Text(movie.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)), const SizedBox(height: 4), Text('${movie.year}  •  ${movie.genre}', maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.white54, fontSize: 11)),
  ]));
}

class DetailPage extends StatefulWidget { final Movie movie; final bool isFavorite; final VoidCallback onFavorite; const DetailPage({super.key, required this.movie, required this.isFavorite, required this.onFavorite}); @override State<DetailPage> createState() => _DetailPageState(); }
class _DetailPageState extends State<DetailPage> { late bool saved; @override void initState() { super.initState(); saved = widget.isFavorite; }
  @override Widget build(BuildContext context) { final m = widget.movie; return Scaffold(appBar: AppBar(backgroundColor: Colors.transparent, title: const Text('Movie details'), actions: [IconButton(onPressed: () { widget.onFavorite(); setState(() => saved = !saved); }, icon: Icon(saved ? Icons.favorite : Icons.favorite_border, color: saved ? Colors.pinkAccent : null))]), body: ListView(padding: const EdgeInsets.all(22), children: [Container(height: 300, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(int.parse('0xFF${m.color}')), const Color(0xFF151C2B)]), borderRadius: BorderRadius.circular(24)), child: Center(child: Text(m.emoji, style: const TextStyle(fontSize: 110))),), const SizedBox(height: 24), Text(m.title, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900)), const SizedBox(height: 12), Wrap(spacing: 9, runSpacing: 8, children: [InfoPill(text: m.year), InfoPill(text: m.genre), InfoPill(text: '★ ${m.rating}')]), const SizedBox(height: 25), const Text('OVERVIEW', style: TextStyle(color: Color(0xFFB7ACFF), fontSize: 12, fontWeight: FontWeight.w800, letterSpacing: 1.5)), const SizedBox(height: 10), Text(m.overview, style: const TextStyle(color: Colors.white70, height: 1.65, fontSize: 15)), const SizedBox(height: 28), FilledButton.icon(onPressed: () { widget.onFavorite(); setState(() => saved = !saved); }, icon: Icon(saved ? Icons.favorite : Icons.favorite_border), label: Text(saved ? 'Saved to favourites' : 'Add to favourites'), style: FilledButton.styleFrom(backgroundColor: const Color(0xFF7668D9), padding: const EdgeInsets.symmetric(vertical: 15))) ])); }
}
class InfoPill extends StatelessWidget { final String text; const InfoPill({super.key, required this.text}); @override Widget build(BuildContext context) => Container(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8), decoration: BoxDecoration(color: const Color(0xFF1A2233), borderRadius: BorderRadius.circular(10)), child: Text(text, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12))); }

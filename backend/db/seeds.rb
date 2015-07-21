# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

star_wars = Movie.find_or_create_by name: "Star Wars", release: DateTime.new(1977, 5, 25), year: 1977
the_empire_strikes_back = Movie.find_or_create_by name: "Star Wars: The Empire Strikes Back", release: DateTime.new(1980, 6, 20), year: 1980
the_return_of_the_jedi = Movie.find_or_create_by name: "Star Wars: The Return of the Jedi", release: DateTime.new(1983, 5, 25), year: 1983

the_avengers = Movie.find_or_create_by name: "The Avengers", release: DateTime.new(2012, 5, 4), year: 2012
iron_man_movie = Movie.find_or_create_by name: "Iron Man", release: DateTime.new(2008, 5, 2), year: 2008
iron_man_2 = Movie.find_or_create_by name: "Iron Man 2", release: DateTime.new(2010, 5, 7), year: 2010
iron_man_3 = Movie.find_or_create_by name: "Iron Man 3", release: DateTime.new(2013, 5, 3), year: 2013

harrison_ford = Actor.find_or_create_by name: "Harrison Ford"
mark_hammil = Actor.find_or_create_by name: "Mark Hammil"
carrie_fisher = Actor.find_or_create_by name: "Carrie Fisher"
alec_guinness = Actor.find_or_create_by name: "Alec Guinness"
peter_mayhew = Actor.find_or_create_by name: "Peter Mayhew"

rdj = Actor.find_or_create_by name: "Robert Downey Jr"
chris_evans = Actor.find_or_create_by name: "Chris Evans"
mark_ruffalo = Actor.find_or_create_by name: "Mark Ruffalo"
chris_hemsworth = Actor.find_or_create_by name: "Chris Hemsworth"
scarlett_johansson = Actor.find_or_create_by name: "Scarlett Johansson"
jeremy_renner = Actor.find_or_create_by name: "Jeremy Renner"
clark_gregg = Actor.find_or_create_by name: "Clark Gregg"
gwen_paltrow = Actor.find_or_create_by name: "Gwyneth Paltrow"
sam_jackson = Actor.find_or_create_by name: "Samuel L. Jackson"
paul_bettany = Actor.find_or_create_by name: "Paul Bettany"

han_solo = Character.find_or_create_by name: "Han Solo"
luke_skywalker = Character.find_or_create_by name: "Luke Skywalker"
princess_leia = Character.find_or_create_by name: "Princess Leia"
obi_wan = Character.find_or_create_by name: "Obi Wan Kenobi"
chewbacca = Character.find_or_create_by name: "Chewbacca"

iron_man = Character.find_or_create_by name: "Tony Stark / Iron Man"
pepper = Character.find_or_create_by name: "Pepper Potts"
cap = Character.find_or_create_by name: "Steve Rogers / Captain America"
hulk = Character.find_or_create_by name: "Bruce Banner / The Hulk"
thor = Character.find_or_create_by name: "Thor"
black_widow = Character.find_or_create_by name: "Natasha Romanoff / Black Widow"
hawkeye = Character.find_or_create_by name: "Clint Barton / Hawkeye"
coulson = Character.find_or_create_by name: "Phil Coulson"
fury = Character.find_or_create_by name: "Nick Fury"
jarvis = Character.find_or_create_by name: "J.A.R.V.I.S."

Appearance.find_or_create_by character: iron_man, actor: rdj, movie: the_avengers
Appearance.find_or_create_by character: cap, actor: chris_evans, movie: the_avengers
Appearance.find_or_create_by character: hulk, actor: mark_ruffalo, movie: the_avengers
Appearance.find_or_create_by character: thor, actor: chris_hemsworth, movie: the_avengers
Appearance.find_or_create_by character: black_widow, actor: scarlett_johansson, movie: the_avengers
Appearance.find_or_create_by character: hawkeye, actor: jeremy_renner, movie: the_avengers
Appearance.find_or_create_by character: coulson, actor: clark_gregg, movie: the_avengers
Appearance.find_or_create_by character: pepper, actor: gwen_paltrow, movie: the_avengers
Appearance.find_or_create_by character: fury, actor: sam_jackson, movie: the_avengers
Appearance.find_or_create_by character: jarvis, actor: paul_bettany, movie: the_avengers

Appearance.find_or_create_by character: iron_man, actor: rdj, movie: iron_man_movie
Appearance.find_or_create_by character: pepper, actor: gwen_paltrow, movie: iron_man_movie
Appearance.find_or_create_by character: coulson, actor: clark_gregg, movie: iron_man_movie
Appearance.find_or_create_by character: pepper, actor: gwen_paltrow, movie: iron_man_movie
Appearance.find_or_create_by character: fury, actor: sam_jackson, movie: iron_man_movie
Appearance.find_or_create_by character: jarvis, actor: paul_bettany, movie: iron_man_movie

Appearance.find_or_create_by character: iron_man, actor: rdj, movie: iron_man_2
Appearance.find_or_create_by character: pepper, actor: gwen_paltrow, movie: iron_man_2
Appearance.find_or_create_by character: fury, actor: sam_jackson, movie: iron_man_2
Appearance.find_or_create_by character: black_widow, actor: scarlett_johansson, movie: iron_man_2
Appearance.find_or_create_by character: jarvis, actor: paul_bettany, movie: iron_man_2

Appearance.find_or_create_by character: iron_man, actor: rdj, movie: iron_man_3
Appearance.find_or_create_by character: pepper, actor: gwen_paltrow, movie: iron_man_3
Appearance.find_or_create_by character: jarvis, actor: paul_bettany, movie: iron_man_3

Appearance.find_or_create_by character: han_solo, actor: harrison_ford, movie: star_wars
Appearance.find_or_create_by character: luke_skywalker, actor: mark_hammil, movie: star_wars
Appearance.find_or_create_by character: princess_leia, actor: carrie_fisher, movie: star_wars
Appearance.find_or_create_by character: obi_wan, actor: alec_guinness, movie: star_wars
Appearance.find_or_create_by character: chewbacca, actor: peter_mayhew, movie: star_wars

Appearance.find_or_create_by character: han_solo, actor: harrison_ford, movie: the_empire_strikes_back
Appearance.find_or_create_by character: luke_skywalker, actor: mark_hammil, movie: the_empire_strikes_back
Appearance.find_or_create_by character: princess_leia, actor: carrie_fisher, movie: the_empire_strikes_back
Appearance.find_or_create_by character: obi_wan, actor: alec_guinness, movie: the_empire_strikes_back
Appearance.find_or_create_by character: chewbacca, actor: peter_mayhew, movie: the_empire_strikes_back

Appearance.find_or_create_by character: han_solo, actor: harrison_ford, movie: the_return_of_the_jedi
Appearance.find_or_create_by character: luke_skywalker, actor: mark_hammil, movie: the_return_of_the_jedi
Appearance.find_or_create_by character: princess_leia, actor: carrie_fisher, movie: the_return_of_the_jedi
Appearance.find_or_create_by character: obi_wan, actor: alec_guinness, movie: the_return_of_the_jedi
Appearance.find_or_create_by character: chewbacca, actor: peter_mayhew, movie: the_return_of_the_jedi

TRIVIAL = "1 - Trivial"
EASY    = "2 - Easy"
MEDIUM  = "3 - Moderate"
TRICKY  = "4 - Tricky"
HARD    = "5 - HARD"

def add_clue(clue, card:)
  card.clues.create(content: clue)  
end

add_year = Card.find_or_create_by title: "Add Year to Movies List", 
                       description: %{Add the Movie Year to the Title Link},
                       complete: false, 
                       difficulty: TRIVIAL,
                       comments: "E.g. Star Wars (1977)"

add_clue "Check the ember model class out at app/models/movie.coffee to see the attributes", card: add_year
add_clue "In emblem templates, you can output a plain text string by starting the line with a pipe: `| Hello World`", card: add_year
add_clue %{You can interpolate emblem plaintext lines: `|  (\#{foo.bar})`}, card: add_year

movies_show = Card.find_or_create_by title: "Create Movie Show Page",
                       description: %{Create a page that shows at /movies/1/
                         You'll need to create a route and a template, as well as update router.coffee.
 
                         When creating nested routes, you'll want to create a folder in each section. So, for a show route nested under movies,
                         you'll need app/routes/movies/show.coffee and app/templates/movies/show.emblem.
                       },
                       complete: false,
                       difficulty: MEDIUM,
                       comments: %{You'll need to create a route and a template, as well as update router.coffee}


add_clue %{See: http://guides.emberjs.com/v1.13.0/routing/defining-your-routes/ for help defining the route}, card: movies_show
add_clue %{The route object exposes a hook called model for loading data}, card: movies_show
add_clue %{Use DS.Store's find method to load the data from the backend}, card: movies_show

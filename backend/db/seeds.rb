# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

star_wars = Movie.find_or_create_by name: "Star Wars", release: DateTime.new(1977, 5, 25), year: 1977, description: %{
Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a wookiee and two droids to save the universe from the Empire's world-destroying battle-station, while also attempting to rescue Princess Leia from the evil Darth Vader.
}
the_empire_strikes_back = Movie.find_or_create_by name: "Star Wars: The Empire Strikes Back", release: DateTime.new(1980, 6, 20), year: 1980, description: %{
After the rebels have been brutally overpowered by the Empire on their newly established base, Luke Skywalker takes advanced Jedi training with Master Yoda, while his friends are pursued by Darth Vader as part of his plan to capture Luke.
}
the_return_of_the_jedi = Movie.find_or_create_by name: "Star Wars: The Return of the Jedi", release: DateTime.new(1983, 5, 25), year: 1983, description: %{
After rescuing Han Solo from the palace of Jabba the Hutt, the rebels attempt to destroy the second Death Star, while Luke struggles to make Vader return from the dark side of the Force.
}

the_avengers = Movie.find_or_create_by name: "The Avengers", release: DateTime.new(2012, 5, 4), year: 2012, description: %{
Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.
}
iron_man_movie = Movie.find_or_create_by name: "Iron Man", release: DateTime.new(2008, 5, 2), year: 2008, description: %{
After being held captive in an Afghan cave, an industrialist creates a unique weaponized suit of armor to fight evil
}
iron_man_2 = Movie.find_or_create_by name: "Iron Man 2", release: DateTime.new(2010, 5, 7), year: 2010, description: %{
With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father's legacy.
}
iron_man_3 = Movie.find_or_create_by name: "Iron Man 3", release: DateTime.new(2013, 5, 3), year: 2013, description: %{
When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.
}

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

TRIVIAL_POINTS = 10
EASY_POINTS    = 50
MEDIUM_POINTS  = 100
TRICKY_POINTS  = 200
HARD_POINTS    = 500

def create_card(attributes={})
  card = Card.find_or_create_by(attributes)
  yield card
end

create_card title: "Add Year to Movies List", 
            description: %{Add the Movie Year to the Title List},
            complete: false, 
            difficulty: TRIVIAL,
            points: TRIVIAL_POINTS,
            comments: "E.g. Star Wars (1977)" do |card|
  card.add_clue %{Check the ember model class out at app/models/movie.coffee to see the attributes}
  card.add_clue %{In emblem templates, you can output a plain text string by starting the line with a pipe: `| Hello World`}
  card.add_clue %{You can interpolate emblem plaintext lines: `|  (\#{foo.bar})`}
end

create_card title: "Create Movie Show Route",
            description: %{
We need to be able to show the details of a movie.

Use `ember g route movies/show` to generate the stub route and template. You won't need a controller!

Don't forget to update app/router.coffee
                       },
            complete: false,
            difficulty: EASY,
            points: EASY_POINTS do |card|
  card.add_clue %{See: http://guides.emberjs.com/v1.13.0/routing/defining-your-routes/ for help defining the route}
  card.add_clue %{The route object exposes a hook called model for loading data}
  card.add_clue %{Use DS.Store's findAll method to load the data from the backend}
end

create_card title: "Link to the movie show page from the movies page",
            description: %{
On the movies index page, use the link-to helper to route the user to the show page for the movie
                       },
            complete: false,
            difficulty: TRIVIAL,
            points: TRIVIAL_POINTS,
            comments: %{
You'll need to create a route and a template, as well as update router.coffee} do |card|
  card.add_clue %{See: http://guides.emberjs.com/v1.13.0/templates/links/ for information on the link-to helper}
  card.add_clue %{You can pass the link-to helper the movie instance or the movie's ID}
  card.add_clue %{If you pass it a full model, the show route's model hook won't be called}
end

create_card title: "Movie Show Page Details",
            description: %{
We should show the movie's name, year and description.

Presently, the movie model doesn't have a description, but the API is returning one!

Add description to the movie model and show it in the template
                       },
            complete: false,
            difficulty: EASY,
            points: EASY_POINTS do |card|
  card.add_clue %{The description field returned from the API is a string, so use DS.attr('string') to define it}
  card.add_clue %{You can view the returned json by hitting `localhost:3000/api/movies/1.json`}
  card.add_clue %{Don't worry about the other records for now}
end

create_card title: "Create all the models!",
            description: %{
Look at the json returned from `localhost:3000/api/movies.json`. You'll notice there are lots of sideloaded records being returned:

1. Appearance
2. Actor
3. Character

Go ahead and define models for these.

    ember g model appearance
    ember g model character
    ember g model actor

And define their properties and relationships
                       },
            complete: false,
            difficulty: HARD,
            points: HARD_POINTS do |card|
  card.add_clue %{Appearnce is a join model that maps together movies, characters and actors. It has 3 DS.belongsTo relationships}
  card.add_clue %{Movies have many appearances, so DS.hasMany is the way to go.}
  card.add_clue %{
If you have json that looks like this:

    {
      "foo" : {
        baz_id: 1
        "bar_ids" : [1, 2, 3, 4]
      } 
    }

Your model should look like

    Foo = DS.Model.extend
      baz:  DS.belongsTo('baz')
      bars: DS.hasMany('bar')

}
end

create_card title: "Show actor and their character in the Cast section of the movie shows page",
            description: %{
We want to show a Cast section that lists each actor in the movie and their characters. We have this available via the appearances model.

Add a cast section to the movie show page and list the actors and what character they played
                       },
            complete: false,
            difficulty: EASY,
            points: EASY_POINTS do |card|
  card.add_clue %{Use the each helper like the one on the movies page to iterate over model.appearances}
  card.add_clue %{Appearance should have a relationship to actor and character}
  card.add_clue %{Make it look nice with a Bootstrap table!}
end

create_card title: "Actors page",
            description: %{
Our actors link in the top navigation doesn't do anything! We need a page where we can just list the actors.

Use `ember g route actors` to get started
                       },
            complete: false,
            difficulty: MEDIUM,
            points: MEDIUM_POINTS do |card|
  card.add_clue %{Look at movies route if you need help figuring out how to query the backend}
  card.add_clue %{Display a list of actors in the actors.emblem template}
  card.add_clue %{Update the top navigation in application.emblem to link-to the actors page}
end

create_card title: "Actors show page",
            description: %{
Now that we have a list of actors, we should link to a actor show page from the actors list and the movie show page.

Just display their name
                       },
            complete: false,
            difficulty: MEDIUM,
            points: MEDIUM_POINTS do |card|
  card.add_clue %{ember g route actors/show}
  card.add_clue %{Don't forget to update `app/router.coffee`}
  card.add_clue %{add the link-to helper in app/templates/actors.emblem and app/templates/movies/show.emblem}
end

create_card title: "New Movie Button",
            description: %{
Add a button on the movies route to create a new movie. It doesn't have to go anywhere yet, we're just prototyping
                       },
            complete: false,
            difficulty: TRIVIAL,
            points: TRIVIAL_POINTS do |card|
  card.add_clue %{You can use a simple html a element in the emblem template for now}
  card.add_clue %{Add some bootstrap styling: btn btn-primary}
  card.add_clue %{I don't know why I thought I could come up with 3 clues for each card.}
end

create_card title: "New Movie Route",
            description: %{
Time to make the new movie form! We're gonna let users fill our database up with made-up movies! Web 2.0 dream right here.

    $ ember g route movies/new
                       },
            complete: false,
            difficulty: MEDIUM,
            points: MEDIUM_POINTS do |card|
  card.add_clue %{In the model hook on the route, just go ahead and create a new record}
  card.add_clue %{DS.Store's createRecord method will put a new record in the store, but it will NOT be sent to the backend yet}
  card.add_clue %{Don't forget router.coffee!}
end

create_card title: "New Movie Template",
            description: %{
Now that the route is set up, it's time to build the form.

Build a form in emblem using the input helper. You'll want to bind the form's submit event to an action
},
            complete: false,
            difficulty: MEDIUM,
            points: MEDIUM_POINTS do |card|
  card.add_clue %{
input helpers look like this:

    label Name
    = input type="text" value=model.name class="form-control"

}
  card.add_clue %{
Notice how the value attribute isn't in quotes? That's because it's a binding to the controller property of that same name!

Since we loaded a new movie record into the store, we can bind the model's attributes to the form.
}

  card.add_clue %{
Emblem's action shorthand is handy here:

    form.form submit="saveMovie"

}
end

create_card title: "New Movie Controller",
            description: %{

We finally have a user interaction to handle. When they submit the form, we want to send those values to the backend.

    ember g controller movies/new

On a successful save, transition to the new movie's show page

                       },
            complete: false,
            difficulty: TRICKY,
            points: TRICKY_POINTS do |card|
  card.add_clue %{Sending the record to the backend is as easy as calling `this.get('model').save()`}
  card.add_clue %{Save returns a promise, so you can provide handlers to resolve or reject based on what comes back from the backend}
  card.add_clue %{ use the transitionTo method to switch to the show page }
end

create_card title: "Handle Errors on Movies new",
            description: %{

The name field on movie is required. Right now we don't tell the user what went wrong when they omit this information, it just sits there.

Show the error messages above the form when something goes wrong on the API side.
                       },
            complete: false,
            difficulty: TRICKY,
            points: TRICKY_POINTS do |card|
  card.add_clue %{Right now, we aren't providing a error handler when something goes wrong. Update your save code to provide an empty reject handler:

    actions:
      saveMovie: () ->
        @get('model').save().then((movie) ->
          @transitionTo('movies.show', movie)
        , (error) ->
        )
}
  card.add_clue %{With that reject handler catching the error, ember data automatically populates model.errors}
  card.add_clue %{ Make a computed property for model.errors and use it in the tempalte to show a bootstrap alert, and iterate through model.errors.messages to display the problems }
end

create_card title: "Make a fancy input component to show errors inline",
            description: %{
Right now we're showing all the errors up top. Our users hate looking through the form to find the field that has the error, so we should display the content inline.

The markup for this is:

    <div class="form-group has-error">
      <label>Name</label>
      <input type="text" class="form-control />
      <p class="help-block">Name cannot be blank</p>
    </div>

Make an ember component that will accept the errors for a paricular field and automatically show the inline message and add the has-error class to the form group


    ember g component my-input

                       },
            complete: false,
            difficulty: TRICKY,
            points: TRICKY_POINTS do |card|
  card.add_clue %{
The component represents a dom element. In this case the form-group div. Div is the default element type, but you can opt into some other wrapper element with the tagName property

    Ember.Component.extend
      tagName: 'span'

The component will aslo take an array of classNames to apply to the outermost elment:

    Ember.Component.extend
      classNames: ['form-group']

And a set of class name bindings.

    Ember.Component.extend
      classNameBindings: ['fooBar']

See http://guides.emberjs.com/v1.13.0/components/customizing-a-components-element/ for more information

}
  card.add_clue %{Components can have computed properties! http://emberjs.com/api/classes/Ember.computed.html has all kind of handly shorthand properties for making properties based off of other properties}
  card.add_clue %{ You'll also want to accept bindings for label, type and value in addition to errors}
end


create_card title: "Edit page for movies",
            description: %{We need to be able to fix errors in input, so make an edit page. You should have a good idea how to get starte by now},
            complete: false,
            difficulty: MEDIUM,
            points: MEDIUM_POINTS do |card|
  card.add_clue %{`ember g route movies/edit`}
  card.add_clue %{`ember g controller movies/edit`}
  card.add_clue %{If you're fancy, you can move the form to a component}
end

create_card title: "Paginate Movies",
            description: %{

We're getting too many movies on that index page. We should really paginate it for the users. Fortunately the API supports pagination.

    GET /api/movies.json?p=2&per_page=5

Update the movies index page to accept query params for p and per_page, and use the provided page-numbers component to paginate the list
},
            complete: false,
            difficulty: HARD,
            points: HARD_POINTS do |card|
  card.add_clue %{See http://guides.emberjs.com/v1.13.0/routing/query-params/ for information on how to support query parameters. You'll also need to make a movies controller}
  card.add_clue %{The when the component receives an action, like clicking on a page, it's going to send that action back to the controller via the action binding. (Data down, actions up). You'll need to handle this action in the movies controller

Handling the action is just a matter of setting p with the value recieved from the component, which if everything else is set up right, will transition you to the new list.
  }
  card.add_clue %{You'll also want to extract the metadata returned from the API so your totalPages property is up-to-date. See http://guides.emberjs.com/v1.13.0/models/handling-metadata/}
end

create_card title: "Control for Page Size",
            description: %{
We can now paginate, but different people want to see different results sizes. Make a control to control the overall page size
},
            complete: false,
            difficulty: MEDIUM,
            points: MEDIUM_POINTS do |card|
  card.add_clue %{See http://emberjs.com/api/classes/Ember.Select.html for information on making a select list}
  card.add_clue %{Give the select a value binding to your per_page query param}
  card.add_clue %{This is the last clue}
end
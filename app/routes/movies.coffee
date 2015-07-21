`import Ember from 'ember'`

Movies = Ember.Route.extend
  model: (params) ->
    @store.findAll('movie')

`export default Movies`
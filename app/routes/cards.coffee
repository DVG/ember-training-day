`import Ember from 'ember'`

Cards = Ember.Route.extend
  model: (params) ->
    @store.findAll('card')

`export default Cards`